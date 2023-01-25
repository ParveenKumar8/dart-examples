void main(List<String> arguments) {
  try {
    tryCreatingPerson(age: 19);
    tryCreatingPerson(age: -1);
    tryCreatingPerson(age: 143);
  } catch (e, stackTrace) {
    print(e);
    print(stackTrace);
  }
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(
      Person(age: age).age,
    );
  } on IllegalAgeException catch (e) {
    rethrow;
    // print(e.runtimeType);
    // print(e);
  }
  print("----------------------");
}

class IllegalAgeException implements Exception {
  final String message;
  final int age;

  IllegalAgeException(this.age, this.message);

  @override
  String toString() {
    return "IllegalAgeException, age:$age, message:$message";
  }
}

class Person {
  final int age;

  Person({required this.age}) {
    if (age < 0) {
      throw IllegalAgeException(age, "Age must be positive");
    } else if (age > 140) {
      throw IllegalAgeException(age, "Age must be less than 140");
    }
  }
}
