import 'package:collection/collection.dart';

/// Unmodifiable list with encapsulate in class
void main(List<String> args) {
  final person = Person(
    name: "Jack",
    siblings: [Person(name: "Jill")],
  );
  //person._siblings?.add(Person(name: 'Baz'));
  try {
    person.siblings?.add(Person(name: 'Kill'));
  } catch (e) {
    print(e);
  }
}

class Person {
  final String name;
  final List<Person>? _siblings;
  UnmodifiableListView<Person>? get siblings =>
      _siblings == null ? null : UnmodifiableListView(_siblings!);

  Person({required this.name, List<Person>? siblings}) : _siblings = siblings;
}
