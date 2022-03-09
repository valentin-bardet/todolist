import 'package:flutter/cupertino.dart';
import 'package:todolist/models/task.dart';
import '../components/tasks/task_master.dart';

class AllTasks extends StatefulWidget {
  const AllTasks({Key? key, required this.tasks}) : super(key: key);

  final List<Task> tasks;

  @override
  State<AllTasks> createState() => _AllTasksState();
}

class _AllTasksState extends State<AllTasks> {
  late List<Task> tasks;
  @override
  void initState() {
    super.initState();
    tasks = widget.tasks;
  }

  @override
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('title'),
        ),
        child: TaskMaster(tasks: tasks),
      ),
    );
  }
}
