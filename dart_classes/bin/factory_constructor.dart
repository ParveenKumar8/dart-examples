/// Factory Constructor - Parent class can easily create instance of subsclass.
void main(List<String> args) {
  final car = Vehicle.car();
  print(car);
  final bicycle = Vehicle.bicycle();
  print(bicycle);
}

class Vehicle {
  const Vehicle();
  factory Vehicle.car() => Car();
  factory Vehicle.bicycle() => Bicycle();

  @override
  String toString() {
    return "Vehicle of type $runtimeType";
  }
}

class Car extends Vehicle {
  const Car();
}

class Bicycle extends Vehicle {
  const Bicycle();
}
