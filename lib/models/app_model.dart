import 'package:flutter/material.dart';
import 'package:todoey/models/task_model.dart';

class AppModel extends ChangeNotifier {
  List<TaskModel> tasks = [];

  void addTask({required String name}) {
    tasks.add(TaskModel(name: name));
    notifyListeners();
  }
}
