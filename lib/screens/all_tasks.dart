import 'package:flutter/cupertino.dart';
import '../components/tasks/task_master.dart';
import 'package:provider/provider.dart';
import 'package:todolist/data/tasks_collection.dart';

class AllTasks extends StatefulWidget {
  const AllTasks({Key? key}) : super(key: key);
  @override
  State<AllTasks> createState() => _AllTasksState();
}

class _AllTasksState extends State<AllTasks> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('title'),
        ),
        child: Consumer<TasksCollection>(
          builder: (context, tasks, child) => Stack(
            children: [
              TaskMaster(),
            ],
          ),
          // Build the expensive widget here.
        ),
      ),
    );
  }
}
