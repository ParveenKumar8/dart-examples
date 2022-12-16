/// Collection - List functions
void main(List<String> args) {
  const names = ["Anna", "Boom", "Bin", "Dog"];
  const names1 = ["Anna", "Boom", "Bin", "Dog"];

  const numbersList = [10, 20, 30, 40];
  const numbersList1 = [10, 20, 30, 40];

  print(names.contains("B"));
  print("============");
  final tempList = names.where((name) => name.startsWith("B")).toList();
  print(tempList);
  print("=====Where function Example=======");
  for (final name in names.where((name) => name.startsWith("B"))) {
    print(name);
  }
  print("=====Sublist example=======");
  names.sublist(1, 2).forEach((names) => print(names));

  print("=====Any function example=======");
  print(names.any((element) => element.contains("Bo")));

  print("====List Comparison using equalTo in Strings========");
  if (names == names1) {
    print("Both are equal");
  } else {
    print("Both are not equal");
  }
  print("====List Comparison using equalTo in numbers========");
  if (numbersList == numbersList1) {
    print("Both are equal");
  } else {
    print("Both are not equal");
  }
  print("====List with Map collection========");
  names.map((name) => name.length).forEach((element) {
    print(element);
  });
  print("====List(Integer) - fold function========");
  final result = numbersList.fold(
      -10,
      (
        int previousValue,
        int element,
      ) =>
          previousValue + element);
  print(result);
  print("====List(String) - fold function========");
  final result1 = names1.fold(
      "",
      (
        previousValue,
        element,
      ) =>
          previousValue.toString().isEmpty
              ? element
              : "$previousValue  $element");
  //"$previousValue  $element"
  print(result1);
}
