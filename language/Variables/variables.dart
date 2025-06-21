late String description;
late String temperature = readTemperature();

String readTemperature() {
  return "";
}

void main() {
  var name = 'Bob'; // Inferred
  Object name1 = 'Bob';
  String name2 = 'Bob';
  String? name3; // Nullable
  String name4;// Non-Nullable

  int? lineCount;
  assert(lineCount == null);

  description = 'Feijoada!';
  print(description);

  final name6 = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby';

  //name6 = 'Bobby';

  const bar = 100000;
  const double atm = 1.01325 * bar;
  var foo = const[];
  final bar2 = const[];
  const baz = [];

  foo = [1, 2, 3];

  var _ = 1;
  //int _ = 2;
  //baz = [42];
}