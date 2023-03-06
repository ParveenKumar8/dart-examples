import 'dart:isolate';

import 'dart:io';
import 'dart:convert';

// before running this program. Please change setting in launch.json file.
void main(List<String> args) async {
  do {
    stdout.writeln("Say Something: ");
    final line = stdin.readLineSync(encoding: utf8);
    switch (line?.trim().toLowerCase()) {
      case null:
        continue;
      case 'exit':
        exit(0);
      default:
        final msg = await getMessages(line!);
        print(msg);
    }
  } while (true);
}

Future<String> getMessages(String message) async {
  final rp1 = ReceivePort();
  Isolate.spawn(_communicator, rp1.sendPort);
  final broadcastRp1 = rp1.asBroadcastStream();
  final SendPort sender2 = await broadcastRp1.first;
  sender2.send(message);
  return broadcastRp1
      .takeWhile((element) => element is String)
      .cast<String>()
      .take(1)
      .first;
}

void _communicator(SendPort sender1) async {
  final rp2 = ReceivePort();
  sender1.send(rp2.sendPort);

  final message2 = rp2.takeWhile((element) => element is String).cast<String>();
  await for (var message in message2) {
    for (var entry in messageAndResponse.entries) {
      if (entry.key.trim().toLowerCase() == message.trim().toLowerCase()) {
        sender1.send(entry.value);
        continue;
      }
    }
    sender1.send("Sorry, I have no response.");
  }
}

const messageAndResponse = {
  "Hi": "Hello",
  "": "Please say again!!!",
  "How are you": " I am fine. and you?",
  "Are you learning a flutter?": "Yeah, do you want to join me?",
  "Nice to meet you": " Pleasure is mine",
};
