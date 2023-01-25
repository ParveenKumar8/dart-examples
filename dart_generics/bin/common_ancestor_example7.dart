void main(List<String> args) {
  final a = "2.1".toInt() == 3;
  print(a);
  final b = ["8.1", 2.3].toInt() == 10;
  print(b);
}

extension ToInt on Object {
  int toInt() {
    final list = [
      if (this is Iterable<Object>)
        ...this as Iterable<Object>
      else if (this is int)
        [this as int]
      else
        (double.tryParse(toString()) ?? 0.0).round()
    ];
    return list
        .map(
          (e) => (double.tryParse(
                    e.toString(),
                  ) ??
                  0.0)
              .round(),
        )
        .reduce((lhs, rhs) => lhs + rhs);
  }
}
