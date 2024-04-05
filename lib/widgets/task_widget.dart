import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/constants.dart';
import 'package:todoey/models/app_model.dart';

typedef OnChecked = void Function(bool isChecked);

class TaskWidget extends StatelessWidget {
  final int index;

  const TaskWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: kAppColor,
      checkColor: Colors.white,
      value: Provider.of<AppModel>(context).tasks[index].isChecked,
      onChanged: (isChecked) =>
          Provider.of<AppModel>(context, listen: false).updateTask(
        index: index,
        isChecked: isChecked!,
      ),
      title: Text(
        Provider.of<AppModel>(context).tasks[index].name,
        style: TextStyle(
          decoration: Provider.of<AppModel>(context).tasks[index].isChecked
              ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
    );
  }
}
