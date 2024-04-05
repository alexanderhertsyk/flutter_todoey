import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';
import 'package:todoey/models/task_model.dart';

typedef OnChecked = void Function(bool isChecked);

class TaskWidget extends StatelessWidget {
  final TaskModel task;
  final OnChecked onChecked;

  const TaskWidget({
    super.key,
    required this.task,
    required this.onChecked,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: kAppColor,
      checkColor: Colors.white,
      value: task.isChecked,
      onChanged: (isChecked) => onChecked(isChecked!),
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
