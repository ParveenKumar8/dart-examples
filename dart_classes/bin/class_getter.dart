/// Example of get functin
void main(List<String> args) {
  final person = Person(firstName: "Sonu", lastName: "Kumar");
  print(person.fullName);

  final person1 = Person1(firstName: "Sonu", lastName: "Kumar");
  print(person1.fullName);
  print(person1.fullName);
}

class Person {
  final String firstName;
  final String lastName;
  late String fullName;

  Person({required this.firstName, required this.lastName}) {
    print("Person constructor called");
    fullName = '$firstName $lastName';
  }
}

class Person1 {
  final String firstName;
  final String lastName;
  String get fullName {
    print("fullName called");
    return '$firstName $lastName';
  }

  Person1({required this.firstName, required this.lastName});
}
