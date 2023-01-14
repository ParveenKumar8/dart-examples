void main(List<String> arguments) {
  final person = Person();
  person.jump(speed: 20.0);
  person.walk(speed: 5.0);
}

mixin HasSpeed {
  abstract double speed;
}

mixin CanJump on HasSpeed {
  void jump({required double speed}) {
    print("$runtimeType is jumping at speed of $speed km/h ");
    this.speed = speed;
  }
}

mixin CanWalk on HasSpeed {
  void walk({required double speed}) {
    print("$runtimeType is walking at speed of $speed km/h ");
    this.speed = speed;
  }
}

class Person with HasSpeed, CanJump, CanWalk {
  @override
  double speed;

  Person() : speed = 0.0;
}
