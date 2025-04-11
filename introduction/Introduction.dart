import 'dart:math';
import '../introduction/importfileexample.dart';

// Top level function
void main() {
  print('Hello word');

  print('\n');
  print('=== Variable ===');
  print('name: $name');
  print('year: $year');
  print('antennaDiameter: $antennaDiameter');
  print('flybyObjects: $flybyObjects');
  print('image: $image');

  print('\n');
  print('Control flow statements');
  yearControl(2001);

  // Functions
  print("result: ${fabonacci(3)}");
  flyByObjectFunction();

  // Import file example
  printInOtherFile();
}

// Variables
var name = 'Voyager I';
var year = 1977;
var antennaDiameter = 3.7;
var flybyObjects = ['Jupiter', 'Saturn'];
var image = {
  'tags': ['saturn'],
  'url': 'www.google.com'
};

// Control flow statements
void yearControl(int year) {
  // if else if
  if (year >= 2001) {
    print('21st Century');
  } else if (year >= 1901) {
    print('20th Century');
  }

  // for loop
  for (final object in flybyObjects) {
    print(object);
  }

  // for loop
  for (int month = 1; month <= 3; month++) {
    print(month);
  }

  // while loop
  print('year before: $year');
  while (year < 2016) {
    year += 1;
  }
  print('year after: $year');
}

// Functions
int fabonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fabonacci(n - 1) + fabonacci(n - 2);
}

void flyByObjectFunction() {
  flybyObjects.where((name) => name.contains('turn')).forEach(print);
}
