import 'package:flutter/foundation.dart';
import 'package:todo/models/task.dart';
import 'dart:collection';

class TaskListProvider extends ChangeNotifier {
  final List<Task> _task = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Egg'),
    Task(name: 'Buy Rice'),
  ];

  UnmodifiableListView<Task> get task => UnmodifiableListView(_task);

  void addTask(String newTask) {
    final newTaskTitle = Task(name: newTask);
    _task.add(newTaskTitle);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _task.remove(task);
    notifyListeners();
  }
}
