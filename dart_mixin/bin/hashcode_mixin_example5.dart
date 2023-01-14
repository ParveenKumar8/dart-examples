void main(List<String> args) {
  final cats = <Cat>{
    Cat(name: "Billy1", age: 4),
    Cat(name: "Billy2", age: 3),
    Cat(name: "Billy1", age: 4),
  };
  cats.forEach(print);
  //print(cats.toString());
}

enum PetType { cat, dog }

mixin Pet {
  String get name;
  int get age;
  PetType get type;

  @override
  String toString() => 'Pet {$type}, name = $name , age = $age';

  @override
  int get hashCode => Object.hash(name, age, type);

  @override
  bool operator ==(Object obj) => obj.hashCode == hashCode;
}

class Cat with Pet {
  @override
  final int age;

  @override
  final String name;

  @override
  final PetType type;

  Cat({
    required this.name,
    required this.age,
  }) : type = PetType.cat;
}
