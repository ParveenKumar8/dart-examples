void main(List<String> args) {
  final numbers = [2, 3, 4, 5, 6].sum;
  final doubles = [2.4, 3.7, 4.2, 5.5, 6.1].sum;
  print(numbers);
  print(doubles);
}

extension SumofIterables<T extends num> on Iterable<T> {
  T get sum => reduce((a, b) => a + b as T);
}
