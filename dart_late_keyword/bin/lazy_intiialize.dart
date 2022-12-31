late String name;
void main(List<String> arguments) {
  try {
    print(name);
  } catch (e) {
    print(e);
  }
  name = "Sonu";
  print(name);
  print("----------------");
  print("Before the function");
  late final newDemo = getName();
  print("After the function");
  print(newDemo);
}

String getName() {
  print("Function called");
  return "New Demo";
}
