import 'package:flutter/cupertino.dart';
import 'screens/all_tasks.dart';
import 'package:todolist/data/tasks.dart' as data;

// import 'package:flutter_launcher_icons/ios.dart';

void main() {
  runApp(AllTasks(
    tasks: data.tasks,
  ));
}
