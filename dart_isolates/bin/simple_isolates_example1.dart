import 'dart:isolate';

void main(List<String> arguments) async {
  await for (final msg in getMessage().take(10)) {
    print("New Msg $msg");
  }
}

Stream<String> getMessage() {
  final receiver1 = ReceivePort();
  final a = Isolate.spawn(_getMessage, receiver1.sendPort)
      .asStream()
      .asyncExpand((_) => receiver1)
      .takeWhile((element) => element is String)
      .cast<String>();
  return a;
}

void _getMessage(SendPort sender) async {
  await for (var item in Stream.periodic(
    const Duration(seconds: 2),
    (_) => DateTime.now().toIso8601String(),
  )) {
    sender.send(item);
  }
}
