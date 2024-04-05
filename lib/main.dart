import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/app_model.dart';
import 'package:todoey/screens/task_screen.dart';

void main() => runApp(const TodoeyApp());

class TodoeyApp extends StatelessWidget {
  const TodoeyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppModel(),
      child: const MaterialApp(home: TasksScreen()),
    );
  }
}
