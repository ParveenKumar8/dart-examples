void main(List<String> args) {
  final cat = Cat(age: 2);
  print(cat.age);
  cat.increaseAge();
  print(cat.age);
}

mixin HasAge {
  abstract int age;
  void increaseAge() {
    age++;
  }
}

class Cat with HasAge {
  @override
  int age;

  Cat({required this.age});
}
