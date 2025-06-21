import 'Classes.dart';

class MockSpacecraft implements Spacecraft {
  @override
  DateTime? launchDate;

  @override
  late String name;

  @override
  void describe() {
    // TODO: implement describe
  }

  @override
  // TODO: implement launchYear
  int? get launchYear => launchDate?.year;
}

abstract class Describable {
  void describe();

  void describeWithEmphasis() {
    print('=====>');
    describe();
    print('=====>');
  }
}