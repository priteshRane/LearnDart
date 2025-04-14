class Television {
  @Deprecated('Use turnOn instead')
  // @deprecated = without message
  void activate() {
    turnOn();
  }

  void turnOn() {}
}

class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);

  @Todo('Dash', 'Implement this function')
  void doSomething() {
    print('Do something');
  }
}

void main() {
  var todoObject = Todo('Mac', 'Implement this function');
  todoObject.doSomething();
}
