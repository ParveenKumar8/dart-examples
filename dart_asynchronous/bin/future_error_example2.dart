void main(List<String> args) async {
  try {
    final person1 = await getFullName(
      firstName: "John",
      lastName: "Walker",
    );
    print(person1);
    final person2 = await getFullName(
      firstName: "",
      lastName: "Walker",
    );
    print(person2);
  } on FirstorLastNameMissingException {
    print("First or last name is missing.");
  }
}

Future<String> getFullName({
  required String firstName,
  required String lastName,
}) {
  if (firstName.isEmpty || lastName.isEmpty) {
    throw FirstorLastNameMissingException();
  }
  return Future.value('$firstName $lastName');
}

class FirstorLastNameMissingException implements Exception {
  const FirstorLastNameMissingException();
}
