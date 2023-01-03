void main(List<String> arguments) {
  final tommy = Animal(
    name: "Tommy",
    type: AnimalType.rabbit,
  );
  tommy.type == AnimalType.dog
      ? print("Tommy is a dog")
      : print("Tommy is not a dog");

  switch (tommy.type) {
    case AnimalType.cat:
      print("Tommy is a cat.");
      break;
    case AnimalType.dog:
      print("Tommy is a dog.");
      break;
    case AnimalType.birds:
      print("Tommy is a birds.");
      break;
    case AnimalType.rabbit:
      print("Tommy is a rabbit.");
      break;
  }
}

enum AnimalType {
  cat,
  dog,
  birds,
  rabbit,
}

class Animal {
  final String name;
  final AnimalType type;

  Animal({
    required this.name,
    required this.type,
  });
}
