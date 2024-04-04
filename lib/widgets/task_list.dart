import 'package:flutter/material.dart';
import 'package:todoey/models/task_model.dart';
import 'package:todoey/widgets/task_widget.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  final List<TaskModel> _tasks = [
    TaskModel(name: 'Buy milk'),
    TaskModel(name: 'Check cable tv'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _tasks.length,
      itemBuilder: (context, i) => TaskWidget(
        task: _tasks[i],
        onChecked: (isChecked) =>
            setState(() => _tasks[i].isChecked = isChecked),
      ),
    );
  }
}
