void main(List<String> args) async {
  await for (var item in getAllNames()) {
    print("Name is $item");
  }
}

Stream<String> getMaleName() async* {
  yield "Parveen";
  yield "Kumar";
  yield "Sonu";
}

Stream<String> getFemaleName() async* {
  yield "Bhawna";
  yield "Kaundal";
  yield "Varsha";
}

Stream<String> getAllNames() async* {
  yield* getMaleName();
  yield* getFemaleName();
}
