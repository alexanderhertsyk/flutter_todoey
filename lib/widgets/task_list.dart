import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/app_model.dart';
import 'package:todoey/widgets/task_widget.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppModel>(
      builder: (context, appModel, _) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: appModel.taskCount,
          itemBuilder: (context, i) => TaskWidget(
            appModel.tasks[i],
            onChecked: (isChecked) =>
                appModel.updateTask(index: i, isChecked: isChecked!),
          ),
        );
      },
    );
  }
}
