import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';
import 'package:todoey/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  final TaskModel task;
  final void Function(bool? isChecked) onChecked;
  final void Function() onLongTap;

  const TaskWidget(
    this.task, {
    super.key,
    required this.onChecked,
    required this.onLongTap,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: kAppColor,
      checkColor: Colors.white,
      value: task.isChecked,
      onChanged: onChecked,
      title: GestureDetector(
        onLongPress: onLongTap,
        child: Text(
          task.name,
          style: TextStyle(
            decoration: task.isChecked
                ? TextDecoration.lineThrough
                : TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
