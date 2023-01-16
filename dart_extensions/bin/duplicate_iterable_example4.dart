void main(List<String> args) {
  final ex = [2, 3, 5];
  print(ex.containsDuplicates);
}

extension on Iterable {
  bool get containsDuplicates => toSet().length != length;
}
