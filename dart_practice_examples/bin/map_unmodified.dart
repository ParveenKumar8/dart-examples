import 'package:collection/collection.dart';

///Unmodified Map
void main(List<String> args) {
  final map = {
    "name": "Sonu",
    "age": 33,
    "address": {
      "street": "67",
      "residence": "Tower enclave",
    },
  };
  try {
    final readOnlyMap = UnmodifiableMapView(map);
    readOnlyMap.addAll({"name": "Sonu"});
    //.addAll({"religion": "Hindu"});
    print(readOnlyMap);
  } catch (e) {
    print(e);
  }
  // readOnlyMap.addAll({"religion": "Hindu"});
  // print(readOnlyMap);
}
