void main(List<String> args) {
  final hasFeet = Human();
  hasFeet.run();
}

class HasFeet {
  const HasFeet();
}

class Human extends HasFeet with CanRun {
  const Human();
}

mixin CanRun on HasFeet {
  void run() {
    print("$runtimeType is running");
  }
}

class HasNoFeet {
  const HasNoFeet();
}

class Fish extends HasNoFeet {
  const Fish();
}
