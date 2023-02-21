void main(List<String> args) async {
  final result = await getNames()
      .asyncMap(
    (name) => getCharactersFromName(name),
  )
      .fold('', (previous, element) {
    final elements = element.join(' ');
    return '$previous $elements ';
  });
  print(result);
}

Stream<String> getNames() async* {
  yield "Ram";
  yield "Sham";
  yield "Tam";
}

Future<List<String>> getCharactersFromName(String name) async {
  List<String> characters = [];
  for (final newChar in name.split('')) {
    await Future.delayed(
      Duration(seconds: 1),
    );
    characters.add(newChar);
  }
  return characters;
}
