//
import 'package:collection/collection.dart';

void main(List<String> args) {
  testBoolList();
  print("-----------------");
  testCombinedIterableList();
  print("-----------------");
  testCombinedList();
  print("-----------------");
  testCombinedMap();
  print("-----------------");
  mergeMapsFunc();
}

void testCombinedIterableList() {
  /// You can add multiple iterables and then changes will affect directly on CombinedIterableView
  final iterable1 = [1, 2, 3];
  final iterable2 = [4, 5, 6];
  final iterable3 = [7, 8, 9];
  var combinedIterable = CombinedIterableView([
    iterable1,
    iterable2,
    iterable3,
  ]);
  iterable1.add(11);
  print(combinedIterable);
  print(combinedIterable.sum);
}

void testCombinedList() {
  /// You can add multiple iterables and then changes will affect directly on CombinedIterableView
  final list1 = ["Ram", "Sham", "Shyam"];
  final list2 = ["Cat", "mat", "tat"];
  final list3 = ["One", "Two", "Three"];
  var combinedList = CombinedListView([
    list1,
    list2,
    list3,
  ]);
  list1.removeAt(2);
  //list1.add(11);
  print(combinedList);
  try {
    combinedList.removeAt(2);
    //list1.add(11);
    print(combinedList);
  } catch (e) {
    print(e);
  }
}

void testCombinedMap() {
  final map1 = {"a": 1, "b": 2, "c": 3};
  final map2 = {"e": 1, "c": 2, "d": 3};
  final map3 = {"f": 1, "a": 2, "e": 3};
  var combinedMap = CombinedMapView([
    map1,
    map2,
    map3,
  ]);

  print(combinedMap);
}

void testBoolList() {
  /// Because bool contains more bits in
  /// if we neeed to use a lot of booleans in a list then we can use BoolList
  final boolList = BoolList(10, growable: true);
  print(boolList);
  boolList[1] = true;
  boolList.length *= 2;
  print(boolList);
}

void mergeMapsFunc() {
  final info1 = {
    "name": "Sonu",
    "age": 20,
    "sex": "male",
    "address": "Tower Enclave",
    "weight": 60,
  };
  final info2 = {
    "name": "Monu",
    "age": 21,
    "sex": "female",
    "height": "5.4cm",
    "address": "Tower Enclave",
  };
  final result = mergeMaps(
    info1,
    info2,
    value: (p0, p1) => p0,
  );
  print(result);
}
