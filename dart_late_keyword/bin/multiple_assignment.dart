void main(List<String> args) {
  final person = Person();
  person.desc = "Hello Person";
  person.desc = "Hello Person2";
  print(person.desc);
  final dog = Dog();
  dog.desc = "Hello Dog";
  dog.desc = "Hello Dog2";
  print(dog.desc);
}

class Person {
  late String desc;
}

class Dog {
  late final String desc;
}
