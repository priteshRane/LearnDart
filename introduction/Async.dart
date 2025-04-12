import 'dart:io';

import 'Spacecraft.dart';

const seconds = Duration(seconds: 2);
Iterable<String> stringIterable = ['apple', 'banana', 'cherry'];

Future<void> printWithDelay(String message) async {
  await Future.delayed(seconds);
  print(message);
}

// OR

Future<void> printWithDelayWay2(String message) {
  return Future.delayed(seconds).then((_) {
    print(message);
  });
}

Future<void> createDescription(Iterable<String> objects) async {
  for (final object in objects) {
    try {
      var file = File('$object.txt');
      if (await file.exists()) {
        var modified = await file.lastModified();
        print('File for $object already exist, It was modified on $modified.');
        continue;
      }
      await file.create();
      await file.writeAsString('Start describing $object in this file.');
    } on IOException catch (e) {
      print('Cannot create description for $object: $e');
    }
  }
}

Stream<String> report(Spacecraft craft, Iterable<String> objects) async* {
  for (final object in objects) {
    await Future.delayed(seconds);
    yield '${craft.name} flies by $object';
  }
}

void main() {
  print("=== Async Function ===");
  printWithDelay("Hello World");
  printWithDelayWay2("Hello World");
  createDescription(stringIterable);

  var craft = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  report(craft, stringIterable);
}
