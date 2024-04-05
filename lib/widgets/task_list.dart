import 'package:flutter/material.dart';
import 'package:todoey/models/task_model.dart';
import 'package:todoey/widgets/task_widget.dart';

class TasksList extends StatefulWidget {
  final List<TaskModel> tasks;

  const TasksList({super.key, required this.tasks});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, i) => TaskWidget(
        task: widget.tasks[i],
        onChecked: (isChecked) =>
            setState(() => widget.tasks[i].isChecked = isChecked),
      ),
    );
  }
}
