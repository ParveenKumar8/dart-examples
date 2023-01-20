void main(List<String> args) {
  final momAndDad = {
    "mom": Person(),
    "dad": Person(),
  };
  final sonAndSister = {
    "son": Person(),
    "sister": Person(),
    "fish": Fish(),
  };
  final allFamily = [momAndDad, sonAndSister];
  describe(allFamily);
}

void describe(Iterable<BreathingType> allFamilyList) {
  for (final listItem in allFamilyList) {
    for (final mapItem in listItem.entries) {
      print("breathe() method called from ${mapItem.key} ");
      mapItem.value.breathe();
    }
  }
}

typedef BreathingType<T extends CanBreathe> = Map<String, T>;

mixin CanBreathe {
  void breathe();
}

class Person with CanBreathe {
  const Person();

  @override
  void breathe() {
    print("Person can breathing...");
  }
}

class Fish with CanBreathe {
  const Fish();

  @override
  void breathe() {
    print("Fish can breathing...");
  }
}
