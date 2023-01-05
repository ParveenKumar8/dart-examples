/// Class - function setter
void main(List<String> args) {
  final car = Car();
  try {
    car.drive(speed: 20);
    car.drive(speed: 9);
  } catch (e) {
    print(e);
  }
}

class Car {
  int _speed = 0;

  int get speed => _speed;

  set speed(int currentSpeed) {
    if (currentSpeed < 0) {
      throw Exception('Speed cannot be negative.');
    } else {
      _speed = currentSpeed;
    }
  }

  void drive({required int speed}) {
    this.speed = speed;
    print("Accelerating to $speed km/h");
  }

  void stop() {
    speed = 0;
    print("Stopping");
    print("Stopped");
  }
}
