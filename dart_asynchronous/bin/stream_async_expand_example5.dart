void main(List<String> args) async {
  await for (var item in getNames().asyncExpand(
    (event) => getStrLength(event),
  )) {
    print(item);
  }
}

Stream<String> getStrLength(String name) async* {
  for (int i = 0; i < name.length; i++) {
    await Future.delayed(
      const Duration(milliseconds: 500),
    );
    yield name[i];
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
      const Duration(
        milliseconds: 300,
      ),
    );
    yield namesList[i];
  }
}
