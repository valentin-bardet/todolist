import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todolist/data/tasks_collection.dart';
import 'package:todolist/components/tasks/task_form.dart';
import 'package:todolist/models/task.dart';

class OneTask extends StatelessWidget {
  const OneTask({Key? key}) : super(key: key);

  static String get route => "/all_tasks";

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Todolist'),
      ),
      child: Container(
        margin: const EdgeInsets.only(top: 100),
        child: Consumer<TasksCollection>(
          builder: (context, tasks, child) => Stack(
            children: [
              TaskForm(),
            ],
          ),
          // Build the expensive widget here.
        ),
      ),
    );
  }
}
