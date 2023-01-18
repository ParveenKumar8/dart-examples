void main(List<String> arguments) {
  final int type1 = eitherIntorDouble();
  print(type1);
  final double type2 = eitherIntorDouble();
  print(type2);
}

enum TypeToReturn { type1, type2 }

T eitherIntorDouble<T extends num>() {
  switch (T) {
    case int:
      return 5 as T;
    case double:
      return 5.5 as T;
    default:
      throw Exception('Not Supported data Type');
  }
}
