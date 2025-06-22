import 'dart:io';

import 'Classes.dart';

const oneSecond = Duration(seconds: 2);

Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}

// OR

Future<void> printWithDelay2(String message) {
  return Future.delayed(oneSecond).then((_) {
    print(message);
  });
}

Future<void> createDescription(Iterable<String> objects) async {
  for (final object in objects) {
    try {
      var file = File('$object.txt');
      if (await file.exists()) {
        var modified = await file.lastModified();
        print('File for $object already exists. It was modified on $modified.');
        continue;
      }
      await file.create();
      await file.writeAsString('Start describing $object in this file.');
    } on Invocation catch (e) {
      print('Cannot create description for $object: $e');
    }
  }
}

Stream<String> report(Spacecraft craft, Iterable<String> objects) async* {
  for (final object in objects) {
    await Future.delayed(oneSecond);
    yield '${craft.name} flies by $object';
  }
}

void main() {
  printWithDelay("async example function printWithDelay");
  printWithDelay2("async example function printWithDelay2");

  var flybyObjects = ["Jupiter", "Saturn"];
  createDescription(flybyObjects);

  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  report(voyager, flybyObjects);
}