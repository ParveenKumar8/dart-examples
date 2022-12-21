void main(List<String> args) {
  const nameList = ['John', 'Jack', 'Jill', 'Hill', 'Kill'];
  final iterable = nameList.map((name) => name.toUpperCase());
  for (final name in iterable.take(2)) {
    print(name);
  }
}
