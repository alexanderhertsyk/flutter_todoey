import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey/models/task_model.dart';

class AppModel extends ChangeNotifier {
  final List<TaskModel> _tasks = <TaskModel>[];

  int get taskCount => _tasks.length;
  UnmodifiableListView<TaskModel> get tasks => UnmodifiableListView(_tasks);

  void addTask({required String name}) {
    _tasks.add(TaskModel(name: name));
    notifyListeners();
  }

  void updateTask({required TaskModel task, required bool isChecked}) {
    task.isChecked = isChecked;
    notifyListeners();
  }

  void removeTask(TaskModel task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
