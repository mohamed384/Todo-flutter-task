import 'package:flutter/material.dart';
import 'package:task1/models/task_data.dart';
import 'package:task1/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: Consumer<TaskData>(
        builder: (context, taskData, child) {
          return MaterialApp(
            home: TasksScreen(),
          );
        },
      ),
    );
  }
}
