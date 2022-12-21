/// Map Collection

void main(List<String> args) {
  final person = {
    "name": "Sonu",
    "age": "10",
  };
  print(person);
  print(person["name"]);
  print(person["age"]);
  print(person.keys);
  print(person.values);

  person.putIfAbsent("name", () => "Parveen");
  print(person);
  person.putIfAbsent("name", () => "Bholu");
  print(person);
  for (final entry in person.entries) {
    print("${entry.key} ${entry.value}");
  }
  person.forEach((key, value) {
    print('$key $value');
  });
}
