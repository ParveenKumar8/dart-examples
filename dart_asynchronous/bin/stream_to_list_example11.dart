void main(List<String> args) async {
  final allNames = await getNames().toList();
  for (var item in allNames) {
    print(item);
  }
}

Stream<String> getNames() async* {
  yield "Hello";
  yield "Hello1";
  yield "Hello2";
  yield "Hello3";
}
