// Mixins
// Mixins are a way of reusing code in multiple class hierarchies
// Extend the class with the mixin

mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}
