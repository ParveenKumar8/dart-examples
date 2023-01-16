void main(List<String> arguments) {
  final str = "Hello World !!!";
  print(str.reversedStr);
}

extension on String {
  String get reversedStr => split('').reversed.join().toUpperCase();
}
