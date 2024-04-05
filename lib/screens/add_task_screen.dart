import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/constants.dart';
import 'package:todoey/models/app_model.dart';

class AddTaskScreen extends StatelessWidget {
  final _newTaskNameController = TextEditingController();

  AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kAppColor,
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextField(
            controller: _newTaskNameController,
            autofocus: true,
            textAlign: TextAlign.center,
            cursorColor: kAppColor,
            style: const TextStyle(
              fontSize: 20.0,
            ),
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kAppColor),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kAppColor),
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          TextButton(
            onPressed: () {
              Provider.of<AppModel>(context, listen: false)
                  .addTask(name: _newTaskNameController.text);
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
              shape: const RoundedRectangleBorder(),
              foregroundColor: Colors.white,
              backgroundColor: kAppColor,
            ),
            child: const Text(
              'Add',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}
