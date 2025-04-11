class Spacecraft {
  String name;
  DateTime? launchDate;

  // Read-only non-final property
  int? get lunchYear => launchDate?.year;

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here.
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlunched(String name) : this(name, null);

  // Method
  void describe() {
    print('Spacecraft: $name');
    // Type promotion doesn't work on getters.
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int days = DateTime.now().difference(launchDate).inDays;
      print('Launched: $lunchYear ($days days ago)');
    } else {
      print('Unlaunched');
    }
  }
}

void main() {
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlunched('Voyager III');
  voyager3.describe();
}
