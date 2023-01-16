enum AnimalType {
  cat,
  dog,
  goldFish,
}
void main(List<String> args) {
  print(AnimalType.goldFish.nameContainUpperCase);
}

extension on Enum {
  bool get nameContainUpperCase => name.contains(RegExp(r'[A-Z]'));
}
