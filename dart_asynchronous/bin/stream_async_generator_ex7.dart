void main(List<String> args) async {
  await for (var item in getAddition()) {
    print(item);
  }
  print('------------------');
  await for (var item in getAddition(stop: 10, f: evenOnly)) {
    print(item);
  }
  print('------------------');
  await for (var item in getAddition(stop: 10, f: oddOnly)) {
    print(item);
  }
}

bool evenOnly(int value) => value % 2 == 0;
bool oddOnly(int value) => value % 2 != 0;

typedef IsIncluded = bool Function(int value);

Stream<int> getAddition({
  int start = 0,
  int stop = 5,
  IsIncluded? f,
}) async* {
  for (var i = start; i < stop; i++) {
    // f?.call(i);
    if (f == null || f(i)) {
      yield i;
    }
  }
}
