import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/constants.dart';
import 'package:todoey/models/app_model.dart';

class TaskWidget extends StatelessWidget {
  final int index;

  const TaskWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppModel>(
      builder: (BuildContext context, AppModel appModel, Widget? child) {
        var task = appModel.tasks[index];

        return CheckboxListTile(
          activeColor: kAppColor,
          checkColor: Colors.white,
          value: task.isChecked,
          onChanged: (isChecked) => appModel.updateTask(
            index: index,
            isChecked: isChecked!,
          ),
          title: Text(
            task.name,
            style: TextStyle(
              decoration: task.isChecked
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            ),
          ),
        );
      },
    );
  }
}
