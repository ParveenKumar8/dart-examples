/// Example of Collection - List
void main(List<String> args) {
  const names = ["Foo", "Bar", "Bak", "Rock"];
  for (final name in names.reversed) {
    print("Hello $name!");
  }
}
