void main(List<String> args) {
  const newString = "abrakadabra";
  var result = [
    for (final char in newString.split('')) "abc".contains(char) ? null : char
  ]
    ..removeWhere((element) => element == null)
    ..cast<String>();
  print(result);
  print("===============");
  final allNumbers = Iterable.generate(100);
  final result1 = [...allNumbers.where((number) => number % 2 != 0)];
  print(result1);
  print("===============");
  final names = ["John", "Jack", "Jill"];
  final newMap = {for (var name in names) name: name.length};
  print(newMap);
}
