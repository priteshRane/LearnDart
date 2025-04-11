enum PlanetType { terrestrial, gas, ice }

enum Planet {
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false);

  // A Constant genrating constructor
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
  final yourPlanet = Planet.mercury;

  if (!yourPlanet.isGiant) {
    print('Your planet is not a "giant planet".');
  }
}
