void main(List<String> args) {
  final family = Family(members: [
    Person(name: "Sonu"),
    Person(name: "Monu"),
  ]);

  ///
  final family1 = Family1(members: [
    Person(name: "Sonu"),
    Person(name: "Monu"),
  ]);
  print(family1.memberCount);
}

class Person {
  final String name;
  Person({required this.name});
}

/// Wrong implementation - in this class late variable called without calling variable.
class Family {
  final Iterable<Person> members;
  late int memberCount;

  Family({required this.members}) {
    print("Calling constructor");
    memberCount = getMemberCount();
  }

  int getMemberCount() {
    print("Calling getMemberCount() -> Family");
    return members.length;
  }
}

/// Correct implementation -
class Family1 {
  final Iterable<Person> members;
  late int memberCount = getMemberCount();

  Family1({required this.members});

  int getMemberCount() {
    print("Calling getMemberCount() -> Family1");
    return members.length;
  }
}
