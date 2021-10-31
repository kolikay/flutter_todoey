// ignore_for_file: recursive_getters

import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _task = [
    Task(name: 'bay bread'),
    Task(name: 'buy milk'),
    Task(name: 'buy food')
  ];

  int get taskCount {
    return _task.length;
  }

  UnmodifiableListView<Task> get task {
    return UnmodifiableListView(_task);
  }

  void addTask(String newTaskTitle) {
    final newTask = Task(name: newTaskTitle);
    _task.add(newTask);
    notifyListeners();
  }
}
