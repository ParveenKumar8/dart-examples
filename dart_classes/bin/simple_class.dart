void main(List<String> args) {
  /// Simple class
  final john = Person(name: "John", age: 35);
  print(john.name);
  print(john.age);
}

class Person {
  final String name;
  final int age;

  const Person({required this.name, required this.age});
}
