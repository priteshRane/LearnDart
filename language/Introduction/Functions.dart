void main() {
  int result = fibonacci(20);
  print("Fibonacci value is: ${result}");

  // Shorthand => example
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  flybyObjects.where((name) => name.contains('turn')).forEach(print);
}

int fibonacci(int n) {
  if (n==0 || n==1) return n;
  return fibonacci(n-1) + fibonacci(n-2);
}