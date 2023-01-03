void main(List<String> args) {
  /// Simple class
  final john = Person1(name: "John", age: 35);
  print(john.name);
  print(john.age);

  print("========================");

  final reddy = Person2("Reddy", 15);
  print(reddy.name);
  print(reddy.age);
}

/// Class with named parameters
class Person1 {
  final String name;
  final int age;

  const Person1({
    required this.name,
    required this.age,
  });
}

/// Class with positional parameters
class Person2 {
  final String name;
  final int age;

  const Person2(
    this.name,
    this.age,
  );
}
