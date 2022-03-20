import 'package:flutter/cupertino.dart';
import 'screens/all_tasks.dart';
import 'package:todolist/data/tasks_collection.dart';
import 'package:provider/provider.dart';
import 'package:todolist/components/app.dart';

// import 'package:flutter_launcher_icons/ios.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TasksCollection(),
      child: const ToDoListApp(),
    ),
  );
}
