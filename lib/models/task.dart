class Task {
  final String? name;
  bool isDone;
  Task({this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }

  void numbOfChecked(int number) {
    if (isDone = true) {
      number += 1;
    }
  }
}
