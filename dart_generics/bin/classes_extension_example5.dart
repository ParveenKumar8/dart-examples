void main(List<String> args) {
  final tuple = Tuple(left: 20.2, right: 3.4);
  print(tuple);
  final swap = tuple.swap();
  print(swap);
  final sum1 = swap.sum;
  print('Sum is $sum1');
}

class Tuple<L, R> {
  final L left;
  final R right;

  const Tuple({required this.left, required this.right});

  @override
  String toString() {
    return 'Tuple : Left value = $left Right value = $right';
  }
}

extension<L, R> on Tuple<L, R> {
  Tuple<R, L> swap() => Tuple(left: right, right: left);
}

extension<L extends num, R extends num> on Tuple<L, R> {
  num get sum => left + right;
}
