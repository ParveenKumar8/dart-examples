import 'dart:isolate';

void main(List<String> args, SendPort sender) {
  sender.send("Hello Isolates!! Testing spawn uri");
}
