import 'dart:async';

void main(List<String> args) async {
  //// For normal use, we used below 2 execution code

  // await for (var item in nameStreamList) {
  //   print(item.toUpperCase());
  // }

  // await for (var item in nameStreamList.map((event) => event.toUpperCase())) {
  //   print(item);
  // }

  await for (final item in nameStreamList.capitalized) {
    print(item);
  }

  // await for (final item in nameStreamList.capitalizedUsingMap) {
  //   print(item);
  // }
}

final nameStreamList = Stream.fromIterable([
  "Ram",
  "Sham",
  "rohit",
]);

extension on Stream<String> {
  Stream<String> get capitalized => transform(
        ToUpperCase(),
      );
  Stream<String> get capitalizedUsingMap => map(
        (name) => name.toUpperCase(),
      );
}

class ToUpperCase extends StreamTransformerBase<String, String> {
  @override
  Stream<String> bind(Stream<String> stream) {
    return stream.map((event) => event.toUpperCase());
  }
}
