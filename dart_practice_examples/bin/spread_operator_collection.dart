void main(List<String> args) {
  addToList();
  print("==============");
  addToListRight();
  print("==============");
  addToMapWrong();
  print("==============");
  addToMapRight();
}

/// Wrong way to add 2 list into new list
void addToList() {
  final names = ["Jack", "Jill", "Hill"];
  final names1 = ["Jack", "Jill", "Hill"];
  final allNames = names;
  allNames.addAll(names1);
  // names.addAll(names1);
  print(names);
  print(names1);
  print(allNames);
}

/// Right way to add 2 list into new list using spread operator
void addToListRight() {
  final names = ["Jack", "Jill", "Hill"];
  final names1 = ["Jack", "Jill", "Hill"];
  final allNames = [...names, ...names1];
  print(names);
  print(names1);
  print(allNames);
}

void addToMapWrong() {
  try {
    const info = {"name": "John", "age": 10, "class": "Metric", "Section": "B"};
    final result = info;
    result.addAll({"color": "black"});
    print(result);
  } catch (e) {
    print(e);
  }
}

void addToMapRight() {
  const info = {"name": "John", "age": 10, "class": "Metric", "Section": "B"};
  final result = {...info}..addAll({"color": "black"});
  //result.addAll();
  print(result);
}
