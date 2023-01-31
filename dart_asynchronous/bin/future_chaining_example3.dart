void main(List<String> args) async {
  final length = await getFullName("firstName", "lastName")
      .then((value) => getStrLength(value));

  print('Length of string is $length');
}

Future<String> getFullName(String firstName, String lastName) {
  return Future.delayed(
    const Duration(seconds: 1),
    () => '$firstName $lastName',
  );
}

Future<int> getStrLength(String name) {
  return Future.delayed(
    const Duration(seconds: 1),
    (() => name.length),
  );
}
