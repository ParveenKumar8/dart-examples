void main(List<String> args) {
  final vehicle = Vehicle(0);
  print(vehicle);
  final car = Car();
  print(car);
  final bicycle = Bicycle();
  print(bicycle);
}

class Vehicle {
  final int wheelCount;
  Vehicle(this.wheelCount);

  @override
  String toString() {
    //return super.toString();
    if (runtimeType == Vehicle) {
      return "$runtimeType has $wheelCount wheels";
    }
    return super.toString();
  }
}

class Car extends Vehicle {
  Car({int? wheelCount}) : super(wheelCount ?? 4);
}

class Bicycle extends Vehicle {
  Bicycle({int? wheelCount}) : super(wheelCount ?? 2);
}
