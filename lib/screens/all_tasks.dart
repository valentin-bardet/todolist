import 'package:flutter/cupertino.dart';
import '../components/tasks/task_master.dart';
import 'package:provider/provider.dart';
import 'package:todolist/data/tasks_collection.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({Key? key}) : super(key: key);
  static String get route => "/all_tasks";

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Todolist'),
      ),
      child: Consumer<TasksCollection>(
        builder: (context, tasks, child) => Stack(
          children: [
            TaskMaster(),
          ],
        ),
        // Build the expensive widget here.
      ),
    );
  }
}
