import 'package:flutter/cupertino.dart';
import '../screens/all_tasks.dart';
import 'package:todolist/data/tasks_collection.dart';
import 'package:provider/provider.dart';

import 'package:todolist/screens/all_tasks.dart';

import 'package:todolist/screens/one_task.dart';

class ToDoListApp extends StatelessWidget {
  const ToDoListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(brightness: Brightness.light),
      routes: {
        '/all_tasks': (context) => const AllTasks(),
        '/one_task': (context) => const OneTask(),
        // '/created_task': (context) => const AllTasks(),
      },
      home: const AllTasks(),
    );
  }
}
