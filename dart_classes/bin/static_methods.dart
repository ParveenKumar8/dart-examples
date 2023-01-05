void main(List<String> args) {
  // Person.name = "Foo";
  // print(Person.name);
  // Person.name = "Bar";
  // print(Person.name);
  print(Car.initCar);
  Car(name: "My Car");
  print(Car.initCar);
  Car(name: "Your Car");
  print(Car.initCar);
}

class Person {
  static String name = "";
}

class Car {
  static int _initCar = 0;
  static int get initCar => _initCar;
  static void _incrementInitCar() => _initCar++;
  final String name;

  Car({required this.name}) {
    _incrementInitCar();
  }
}
