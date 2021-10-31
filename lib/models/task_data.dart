import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List <Task> task = [
    Task(name: 'bay bread'),
    Task(name: 'buy milk'),
    Task(name: 'buy food')
  ];

  int get taskCount {
    return task.length;
  }

  void addTask(String newTaskTitle) {
    final newTask = Task(name: newTaskTitle);
    task.add(newTask);
    notifyListeners();
  }
}
