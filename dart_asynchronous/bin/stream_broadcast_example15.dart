import 'dart:async';

void main(List<String> args) async {
  await nonBroadCastStream();
  await broadCastStream();
}

Future<void> nonBroadCastStream() async {
  final controller = StreamController<String>();
  controller.sink.add("Hello1");
  controller.sink.add("Hello2");
  controller.sink.add("Hello3");
  controller.close();
  try {
    await for (var item in controller.stream) {
      print(item);
      await for (var item1 in controller.stream) {
        print(item1);
      }
    }
  } catch (e) {
    print(e);
  }
}

Future<void> broadCastStream() async {
  late StreamController<String> controller;
  controller = StreamController<String>.broadcast();
  final sub1 = controller.stream.listen((event) {
    print('New : $event');
  });
  final sub2 = controller.stream.listen((event) {
    print('New : $event');
  });
  controller.sink.add("Hello1");
  controller.sink.add("Hello2");
  controller.sink.add("Hello3");
  controller.close();
  controller.onCancel = (() {
    sub1.cancel();
    sub2.cancel();
  });
}
