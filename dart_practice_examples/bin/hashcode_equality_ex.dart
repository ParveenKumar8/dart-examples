/// Set hashcode and equality
void main(List<String> args) {
  final person = Person(name: "Sonu", age: 78);
  final person1 = Person(name: "Sonu", age: 78);
  final dog = Dog(name: "Sonu", age: 78);

  final personSet = {person, person1};
  print(personSet);

  final personDogSet = {person, dog};
  print(personDogSet);
}

class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  @override
  String toString() => 'Person name: $name age: $age';

  @override
  int get hashCode => Object.hash(
        name,
        age,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && name == other.name && age == other.age;
}

class Dog {
  final String name;
  final int age;

  Dog({required this.name, required this.age});

  @override
  String toString() => 'Dog name: $name age: $age';

  @override
  int get hashCode => Object.hash(
        name,
        age,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Dog && name == other.name && age == other.age;
}
