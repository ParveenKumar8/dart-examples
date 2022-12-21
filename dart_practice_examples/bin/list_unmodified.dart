/// unmodified list example
import 'package:collection/collection.dart';

void main(List<String> args) {
  try {
    final names = ["John", "Jack", "Jill", "Hill"];
    names.add("Kill");
    final readOnlyList = UnmodifiableListView(names);
    readOnlyList.add("will");
    print(readOnlyList);
  } catch (e) {
    print(e);
  }
}
