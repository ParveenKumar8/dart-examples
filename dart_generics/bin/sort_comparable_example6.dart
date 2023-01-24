void main(List<String> args) {
  sort(isAsc: true);
  sort(isAsc: false);
  numbersList.sort((a, b) => b.compareTo(a));
  print(numbersList);
}

var numbersList = [90, 30, 40];
const stringList = ["John", "Warner", "Smith"];
const doublesList = [20.4, 6.30, 9.40];

int isAscending<T extends Comparable>(T a, T b) => a.compareTo(b);
int isDescending<T extends Comparable>(T a, T b) => b.compareTo(a);

void sort({required bool isAsc}) {
  final comparable = isAsc ? isAscending : isDescending;
  final temp1 = [...numbersList]..sort(comparable);
  final temp2 = [...stringList]..sort(comparable);
  final temp3 = [...doublesList]..sort(comparable);
  print(temp1);
  print(temp2);
  print(temp3);
  // print([...numbersList]..sort(comparable));
  // print([...stringList]..sort(comparable));
  // print([...doublesList]..sort(comparable));
}
