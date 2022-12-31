void main(List<String> args) {
  final person = Person();
  print(person.firstName);
  print(person.fullName);
  print(person.lastName);
}

class Person {
  late String fullName = _getFullName();
  late String firstName = fullName.split(' ').first;
  late String lastName = fullName.split(' ').last;

  String _getFullName() {
    print("_getFullName called");
    return "Foo Bar";
  }
}
