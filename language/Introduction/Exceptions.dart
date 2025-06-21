// import 'dart:io';
//
// Future<void> describeFlybyObjects(Iterable<String> flybyObjects) async {
//   try {
//     for (final object in flybyObjects) {
//       var description = await File('$object.txt').readAsString();
//       print(description);
//     }
//   } on IOException catch (e) {
//     print('Could not describe object: $e');
//   } finally {
//     flybyObjects.clear();
//   }
// }
//
// void main() {
//   if (astronauts == 0) {
//     throw StateError('No astronauts.');
//   }
// }