import 'dart:isolate';
import 'dart:io';
import 'dart:convert';

void main(List<String> args) async {
  final responder = await Responder.create();
  do {
    stdout.writeln("Say Something: ");
    final line = stdin.readLineSync(encoding: utf8);
    switch (line?.trim().toLowerCase()) {
      case null:
        continue;
      case 'exit':
        exit(0);
      default:
        final msg = await responder.getMessages(line!);
        print(msg);
    }
  } while (true);
}

class Responder {
  final ReceivePort rp;
  final SendPort sp;
  final Stream<dynamic> bStream;

  Responder({
    required this.rp,
    required this.sp,
    required this.bStream,
  });

  static Future<Responder> create() async {
    final receivePort1 = ReceivePort();
    Isolate.spawn(_communicator, receivePort1.sendPort);
    final broadcastStream = receivePort1.asBroadcastStream();
    final SendPort senderPort1 = await broadcastStream.first;
    return Responder(
      rp: receivePort1,
      sp: senderPort1,
      bStream: broadcastStream,
    );
  }

  Future<String> getMessages(String message) async {
    sp.send(message);
    return bStream
        .takeWhile((element) => element is String)
        .cast<String>()
        .take(1)
        .first;
  }
}

void _communicator(SendPort sender1) async {
  final rp2 = ReceivePort();
  sender1.send(rp2.sendPort);

  final message2 = rp2.takeWhile((element) => element is String).cast<String>();
  await for (var message in message2) {
    for (var entry in messageAndResponse.entries) {
      if (entry.key.trim().toLowerCase() == message.trim().toLowerCase()) {
        sender1.send(entry.value);
        break;
      }
    }
    sender1.send("I have no answer to this question.");
  }
}

const messageAndResponse = {
  "Hi": "Hello",
  "": "Please say again!!!",
  "How are you": " I am fine. and you?",
  "Are you learning a flutter?": "Yeah, do you want to join me?",
  "Nice to meet you": " Pleasure is mine",
};
