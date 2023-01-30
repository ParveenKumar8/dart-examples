void main(List<String> args) async {
  // print(await getName());
  // print(await getAddress());
  print(await getPhoneNumber());
  // print(await getCity());
  // print(await getCountry());
  print(await getZipCode());
}

Future<String> getName() async {
  return "hello";
}

Future<String> getAddress() {
  return Future.value(
    "Hello Address",
  );
}

Future<String> getPhoneNumber() {
  return Future.delayed(
    Duration(seconds: 1),
    () => '5555555',
  );
}

Future<String> getCity() async {
  await Future.delayed(Duration(seconds: 3));
  return "My City";
}

Future<String> getCountry() async => 'India';

Future<int> getZipCode() async =>
    Future.delayed(const Duration(seconds: 2), (() => 5678));
