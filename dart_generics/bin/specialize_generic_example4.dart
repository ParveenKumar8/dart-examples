void main(List<String> args) {
  final JsonParse<String> json = {
    "name": "John",
    // "age": 32,
    "address": "Tower Enclave",
  };
  print(json);
}

typedef JsonParse<T> = Map<String, T>;
