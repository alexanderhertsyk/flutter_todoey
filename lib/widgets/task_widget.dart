import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';
import 'package:todoey/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  final TaskModel task;
  final void Function(bool? isChecked) onChecked;

  const TaskWidget(this.task, {super.key, required this.onChecked});

  @override
  Widget build(BuildContext context) {
    print('Task ${task.name} is ${task.isChecked ? 'checked' : 'unchecked'}');
    return CheckboxListTile(
      activeColor: kAppColor,
      checkColor: Colors.white,
      value: task.isChecked,
      onChanged: onChecked,
      title: Text(
        task.name,
        style: TextStyle(
          decoration:
              task.isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
    );
  }
}
