void main(List<String> args) {
  const one = KeyValue(1, 2);
  print(one);
  const two = KeyValue("Jim", 2.2);
  print(two);
  const three = KeyValue("Kane", "Jim");
  print(three);
  const four = KeyValue(1, true);
  print(four);
}

typedef KeyValue<K, V> = MapEntry<K, V>;
