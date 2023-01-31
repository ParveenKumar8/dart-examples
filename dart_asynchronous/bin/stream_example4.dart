void main(List<String> args) async {
  await for (var number in getNumbers()) {
    print("Number: $number");
  }
  try {
    await for (var name in getNames()) {
      print("Names: $name");
    }
  } catch (e) {
    print(e);
  }
}

Stream<int> getNumbers() async* {
  for (int i = 0; i < 10; i++) {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    yield i;
  }
}

final List<String> namesList = [
  'Sonu',
  'Monu',
  'Karan',
];
Stream<String> getNames() async* {
  for (int i = 0; i < namesList.length; i++) {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    yield namesList[i];
    if (i == 2) throw Exception('Something went wrong');
  }
}
