void main(List<String> args) {
  print(
    personThing.mapIfSimiliarType(
          (Animal p) => p.species,
        ) ??
        "Unknown Name",
  );
}

abstract class Thing {
  final String name;

  const Thing({
    required this.name,
  });
}

class Person extends Thing {
  final int age;

  const Person({
    required String name,
    required this.age,
  }) : super(name: name);
}

class Animal extends Thing {
  final String species;

  const Animal({
    required String name,
    required this.species,
  }) : super(name: name);
}

const Thing personThing = Person(
  name: "Ram",
  age: 18,
);

const Thing animalThing = Animal(
  name: "Jatayu",
  species: "Eagle",
);

extension<T> on T {
  R? mapIfSimiliarType<E, R>(R Function(E) f) {
    final shadow = this;
    if (shadow is E) {
      return f(shadow);
    } else {
      return null;
    }
  }
}
