import 'dart:mirrors';

/// This example using the reflection in dart on mixin
void main(List<String> args) {
  final person = Person(name: "John", age: 20);
  print(person);
  final house = House(address: "St. Peterburg", rooms: 5);
  print(house);
}

mixin HasDescription {
  @override
  String toString() {
    final reflection = reflect(this);
    final typeName = MirrorSystem.getName(reflection.type.simpleName);
    final variableName =
        reflection.type.declarations.values.whereType<VariableMirror>();
    final properties = <String, dynamic>{
      for (final newField in variableName)
        newField.asKey: reflection.getField(newField.simpleName).reflectee,
    }.toString();
    return '$typeName = $properties';
  }
}

extension AsKey on VariableMirror {
  String get asKey {
    final fieldName = MirrorSystem.getName(simpleName);
    final fieldType = MirrorSystem.getName(type.simpleName);
    return '$fieldName ($fieldType)';
  }
}

class Person with HasDescription {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });
}

class House with HasDescription {
  final String address;
  final int rooms;

  House({required this.address, required this.rooms});
}
