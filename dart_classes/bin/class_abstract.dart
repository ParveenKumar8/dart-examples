void main(List<String> args) {
  final car = Car();
  print(car.kind);
  car.accelerateVehicle();
  car.decelerateVehicle();
  final truck = Truck();
  print(truck.kind);
  truck.accelerateVehicle();
  truck.decelerateVehicle();
}

enum VehicleKind { car, truck, mototrcycle }

abstract class Vehicle {
  final VehicleKind kind;

  Vehicle({required this.kind});

  void accelerateVehicle() => print("$runtimeType is accelerating");
  void decelerateVehicle() => print("$runtimeType is decelerating");
}

class Car extends Vehicle {
  Car() : super(kind: VehicleKind.car);
}

class Truck implements Vehicle {
  const Truck();

  @override
  void accelerateVehicle() {
    print("Truck is accelerating");
  }

  @override
  void decelerateVehicle() {
    print("Truck is decelerating");
  }

  @override
  VehicleKind get kind => VehicleKind.truck;
}
