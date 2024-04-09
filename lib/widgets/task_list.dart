import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/app_model.dart';
import 'package:todoey/widgets/task_widget.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  Future<bool> _showPrompt(BuildContext context, String question) async {
    return await showDialog<bool>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: Text(question),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text("OK"),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text("Cancel"),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppModel>(
      builder: (context, appModel, _) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: appModel.taskCount,
          itemBuilder: (context, i) {
            var task = appModel.tasks[i];

            return TaskWidget(
              task,
              onChecked: (isChecked) => appModel.updateTask(
                task: task,
                isChecked: isChecked!,
              ),
              onLongTap: () async {
                var proceedRemoving = await _showPrompt(
                    context, 'Are you sure to remove ${task.name}?');

                if (proceedRemoving) appModel.removeTask(task);
              },
            );
          },
        );
      },
    );
  }
}
