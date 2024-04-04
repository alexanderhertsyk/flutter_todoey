import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  void _addTask() {}

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
          const TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            cursorColor: kAppColor,
            style: TextStyle(
              fontSize: 20.0,
            ),
            decoration: InputDecoration(
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
            onPressed: _addTask,
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
