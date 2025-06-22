import 'Classes.dart';

class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(super.name, super.launchDate, this.altitude);
}

void main() {
   var orbiter = Orbiter('Voyager I', DateTime(1977, 9, 5), 3.5);
   orbiter.describe();
   print('Orbiter altitude is ${orbiter.altitude}');
}