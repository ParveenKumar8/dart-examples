void main(List<String> args) {
  const ages = [
    90,
    30,
    2,
  ];
  const agesInDec = [
    80.8,
    9.45,
    5.3,
  ];
  print(ages.reduce(divide));
  print(agesInDec.reduce(divide));
}

T divide<T extends num>(T lhs, T rhs) {
  if (lhs is int && rhs is int) {
    return lhs ~/ rhs as T;
  } else {
    return lhs / rhs as T;
  }
}
