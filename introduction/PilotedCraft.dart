import 'Piloted.dart';
import 'Spacecraft.dart';

class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(super.name, super.launchDate);
}

void main() {
  var voyager = PilotedCraft('Voyager I', DateTime(1977, 9, 5));
  voyager.astronauts = 9;
  voyager.describeCrew();
}
