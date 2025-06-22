import 'Classes.dart';

class MockSpacecraft implements Spacecraft {
  @override
  DateTime? launchDate;

  @override
  late String name;

  @override
  int? get launchYear => launchDate?.year;

  @override
  void describe() {
    // TODO: implement describe
  }
}

abstract class Describable {
  void describe();

  void describeWithEmphasis() {
    print('=====>');
    describe();
    print('=====>');
  }
}