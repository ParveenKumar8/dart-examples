void main(List<String> args) async {
  final List<int> numberList = [30, 20, 40, 19, 43, 87];
  int sum = 0;
  // await for (var item in getNumber(numList: numberList)) {
  //   sum += item;
  // }
  sum = await getNumber(numList: numberList).reduce(add);
  print('Sum is $sum');
}

int add(int a, int b) => a + b;

Stream<int> getNumber({List<int> numList = const [10, 20]}) async* {
  for (int i = 0; i < numList.length; i++) {
    await Future.delayed(
      const Duration(milliseconds: 200),
    );
    yield numList[i];
  }
}
