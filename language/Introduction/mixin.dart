import 'classes.dart';

mixin Piloted {
  int astronauts = 5;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(super.name, super.launchDate);
}

void main() {
  var pilotedCraft = PilotedCraft('Voyager I', DateTime(1977, 9, 5));
  pilotedCraft.describe();
  pilotedCraft.describeCrew();
}