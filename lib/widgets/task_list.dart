import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/app_model.dart';
import 'package:todoey/widgets/task_widget.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<AppModel>(context).tasks.length,
      itemBuilder: (context, i) => TaskWidget(index: i),
    );
  }
}
