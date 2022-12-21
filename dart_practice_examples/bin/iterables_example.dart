/// Iterables are lazy evaluated which means it will start execution when we use the object.
void main(List<String> args) {
  final iterable = Iterable.generate(20);
  print(iterable);
  final iterable1 = Iterable.generate(20, (i) => getName(i));
  //print(iterable1);
  for (final item in iterable1.take(2)) {
    print(item);
  }
}

String getName(int i) {
  print("Get Name called $i");
  return 'John #${i + 1}';
}
