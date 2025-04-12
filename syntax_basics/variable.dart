var name = 'Bob'; // variable is inferred to be String
Object name2 = 'Bob'; // Not restricted to single type
dynamic name3 = 'Bob';
String name4 = 'Bob'; // explicitly declare the type

// Null Safety
String? name5; // Nullable type
//String name6; Not allow // Non-Nullable Type

// Default value
int? lineCount;
// int lineCount; Not allow on global level
void lineCountFunction(bool weLikeToCount) {
  int lineCount;
  if (weLikeToCount) {
    lineCount = 6;
  } else {
    lineCount = 10;
  }
}

// Late variable
late String description;
void descriptionFunction() {
  description = "Feijoda!";
  print(description);
}

// Final and const
final name6 = "Bob";
final String nickname = "Bpbby";
const bar = 1000000;
const double atm = 1.01325 * bar;
var foo = const [];
final bar = const [];
const baz = [];

void main() {
  print("=== Variable ===");
  print("name: $name");
  // name = 1; not allowed
  print("name2: $name2");
  name2 = 1;
  print("name2 object type changed: $name2");

  print("name3: $name3");
  name3 = 2;
  print("name3 dynamic type changed: $name3");

  print("name4: $name4");
  //name4 = 1; not allowed

  print("name5: $name5");

  assert(lineCount == null);

  lineCountFunction(true);

  // name6 = 'alice'; //Not allowed
}
