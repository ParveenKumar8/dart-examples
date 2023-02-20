import 'dart:async';

void main(List<String> args) async {
  await for (final item in getAllNames().absorbingErrorUsingHandleError()) {
    print(item);
  }
  print("----------------");
  await for (final item in getAllNames().absorbErrorUsingHandler()) {
    print(item);
  }
  print("----------------");
  await for (final item in getAllNames().absorbErrorUsingStreamTransformer()) {
    print(item);
  }
}

extension AbsorbError<T> on Stream<T> {
  Stream<T> absorbingErrorUsingHandleError() => handleError(
        (_, __) {},
      );
  Stream<T> absorbErrorUsingHandler() =>
      transform(StreamTransformer.fromHandlers(
        handleError: (_, __, sink) => sink.close(),
      ));

  Stream<T> absorbErrorUsingStreamTransformer() =>
      transform(StreamErrorHandling());
}

Stream<String> getAllNames() async* {
  yield "Hello";
  yield "Hello1";
  yield "Hello2";
  throw "New Error Occurred.";
}

class StreamErrorHandling<T> extends StreamTransformerBase<T, T> {
  @override
  Stream<T> bind(Stream<T> stream) {
    final controller = StreamController<T>();
    stream.listen(
      controller.sink.add,
      onError: (_) {},
      onDone: controller.close,
    );
    return controller.stream;
  }
}
