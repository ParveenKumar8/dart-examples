import 'dart:isolate';

void main(List<String> args) async {
  final uri = Uri.parse("package:dart_isolates/isolates.dart");
  final rp = ReceivePort();
  Isolate.spawnUri(uri, [], rp.sendPort);
  final f = await rp.first;
  print(f);
}
