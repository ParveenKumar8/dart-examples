void main(List<String> args) {
  const map1 = {
    'Name': 'John',
    'Age': 8,
  };

  final String? ageAsString =
      map1.find<int>('Age', (int age) => age.toString());
  print(ageAsString);

  final String? ageAsName = map1.find('Name', (String name) => name);
  print(ageAsName);
}

extension Find<K, V, R> on Map<K, V> {
  R? find<T>(
    K key,
    R? Function(T value) cast,
  ) {
    final value = this[key];
    if (value != null && value is T) {
      return cast(value as T);
    } else {
      return null;
    }
  }
}
