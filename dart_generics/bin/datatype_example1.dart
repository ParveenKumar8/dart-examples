void main(List<String> arguments) {
  final type1 = eitherIntorDouble(TypeToReturn.integer);
  print(type1);
  final type2 = eitherIntorDouble(TypeToReturn.double);
  print(type2);
}

enum TypeToReturn { integer, double }

T eitherIntorDouble<T extends num>(TypeToReturn typeToReturn) {
  switch (typeToReturn) {
    case TypeToReturn.integer:
      return 5 as T;
    case TypeToReturn.double:
      return 5.5 as T;
  }
}
