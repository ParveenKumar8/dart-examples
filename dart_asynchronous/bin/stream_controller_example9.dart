import 'dart:async';

/// Stream can be readonly but Stream controller can used for both read and write.
void main(List<String> args) async {
  final controller = StreamController<String>();
  controller.sink.add("Event1");
  controller.sink.add("Event2");

  await for (var item in controller.stream) {
    print("New item is " + item);
  }
  controller.close();
}
