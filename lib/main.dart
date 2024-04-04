import 'package:flutter/material.dart';
import 'package:todoey/screens/task_screen.dart';

void main() => runApp(const TodoeyApp());

class TodoeyApp extends StatelessWidget {
  const TodoeyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TasksScreen());
  }
}
