void main(List<String> args) {
  final foo = Person.foo(name: "Foo", age: 12);
  final john = Person("John", 18);
  final bar = Person.bar();
  final baz = Person.baz(20);
  final other = Person.other(name: "Sonu Kumar", age: 21);

  printOutput(foo);
  printOutput(john);
  printOutput(bar);
  printOutput(baz);
  printOutput(other);

  // print("Name is ${john.name}");
  // print("Age is ${john.age}");

  // print("Name is ${bar.name}");
  // print("Age is ${bar.age}");
}

void printOutput(Person obj) {
  print("Name is ${obj.name}");
  print("Age is ${obj.age}");
  print("====================");
}

class Person {
  final String name;
  final int age;

  const Person(
    this.name,
    this.age,
  );
  const Person.foo({
    required this.name,
    required this.age,
  });
  const Person.bar()
      : name = "Bar",
        age = 19;
  const Person.baz(this.age) : name = "Baz";
  const Person.other({
    String? name,
    int? age,
  })  : name = name ?? "Other",
        age = age ?? 1;
}
