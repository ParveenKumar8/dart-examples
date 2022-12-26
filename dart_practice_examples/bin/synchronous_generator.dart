void main(List<String> args) {
  // final names = getNames();
  // print(names);
  for (final name in getNames()) {
    print(name);
  }
}

Iterable<String> getNames() sync* {
  print("Producing Jack");
  yield "Jack";
  print("Producing Jill");
  yield "Jill";
  print("Producing Mill");
  yield "Mill";
  print("Producing Hill");
  yield "Hill";
  print("Producing getExtraNames()");
  yield* getExtraNames();
}

Iterable<String> getExtraNames() sync* {
  print("Producing John");
  yield "John";
  print("Producing Johnny");
  yield "Johnny";
  print("Producing Karan");
  yield "Karan";
  print("Producing Taran");
  yield "Taran";
}
