import 'dart:io';

var astronauts = 0;

void countAstronauts() {
  if (astronauts == 0) {
    throw StateError('No astronauts.');
  }
}

Future<void> describeFlybyObjects(List<String> flybyObjects) async {
  try {
    for (final object in flybyObjects) {
      var description = await File('$object.txt').readAsString();
      print(description);
    }
  } on IOException catch (e) {
    print("Could not describe object: $e");
  } finally {
    flybyObjects.clear();
  }
}

void main() {
  print('=== Exceptions ===');
  //countAstronauts();

  var listIs = ["apple", "bannana"];
  describeFlybyObjects(listIs);
}
