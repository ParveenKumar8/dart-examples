void main(List<String> args) {
  final mom = Mom();
  print(mom.role);
  final dad = Dad();
  print(dad.role);
}

enum Role { mom, dad, bro, sis, grandpa, grandma }

class Person {
  final Role role;

  Person({required this.role});
}

class Mom extends Person {
  Mom() : super(role: Role.mom);
}

class Dad extends Person {
  Dad() : super(role: Role.dad);
}
