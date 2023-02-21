void main(List<String> args) async {
  final result = getAllNames().asyncExpand((event) => times3(event));
  await for (var item in result) {
    print('*$item*');
    print('-------------');
  }
}

Stream<String> getAllNames() async* {
  yield "Ram";
  yield "Sham";
  yield "Rohan";
  yield "Raja";
}

Stream<String> times3(String value) => Stream.fromIterable(
      Iterable.generate(
        3,
        (_) => value,
      ),
    );
