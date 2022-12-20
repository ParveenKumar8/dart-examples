/// Set Collection Example
/// Sets - does not have duplicate elements.
/// Sets understands Hashcode.
import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = {"Anna", "Boom", "Bin", "Dog"};

  print('======Duplicate entry cannot considered if we added==========');
  names.add("Anna");
  print(names);

  print('======If we need to get unique values from multiple==========');
  final names1 = ["Anna", "Boom", "Bin", "Anna"];
  final removeDuplicateNames = {...names1};
  print(removeDuplicateNames);

  print('====== Hashcode ==========');
  final foo1 = "Foo1";
  var foo2 = "Foo1";
  print(foo1.hashCode);
  print('Hello ${foo2.hashCode}');

  print('====== compare two set ==========');
  const numbersList = {10, 20, 30, 40};
  const numbersList1 = {20, 10, 30, 40};
  if (numbersList == numbersList1) {
    print("Both set are equal");
  } else {
    print("Both set are not equal");
  }
  print('====== compare two set by SetEquality()==========');
  print(SetEquality().equals(numbersList1, numbersList));
}
