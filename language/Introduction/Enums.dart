enum PlanetType { terrestial, gas, ice }

// Enum that enumerates the different planets is our solar system
// and some of their properties
enum Planet {
  mercury(planetType: PlanetType.terrestial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.terrestial, moons: 0, hasRings: false),
  earth(planetType: PlanetType.terrestial, moons: 1, hasRings: false),
  mars(planetType: PlanetType.terrestial, moons: 2, hasRings: false),
  jupiter(planetType: PlanetType.gas, moons: 67, hasRings: true);

  // A Constant generating constructor
  const Planet({
    required this.planetType,
    required this.moons,
    required this.hasRings,
  });

  // All instance variables are final
  final PlanetType planetType;
  final int moons;
  final bool hasRings;

  // Enhanced enums support getters and other methods
  bool get isGiant =>
      planetType == PlanetType.gas || planetType == PlanetType.ice;
}

void main() {
  final yourPlanet = Planet.earth;

  if (yourPlanet.isGiant) {
    print('You are on a giant planet');
  } else {
    print('$yourPlanet is not giant Planet');
  }
}
