import 'package:todolist/models/task.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:provider/provider.dart';
import 'package:todolist/data/tasks_collection.dart';

class TaskPreview extends StatefulWidget {
  const TaskPreview({Key? key, required this.task}) : super(key: key);

  final Task task;

  @override
  State<TaskPreview> createState() => _TaskPreviewState();
}

class _TaskPreviewState extends State<TaskPreview> {
  late Task task;
  // late bool selected;
  // late Function onSelect;

  void initState() {
    super.initState();
    task = widget.task;
  }

  @override
  Widget build(BuildContext context) {
    var icon;
    if (task.completed) {
      icon = CupertinoIcons.chevron_down_square_fill;
    } else {
      icon = CupertinoIcons.square;
    }
    return Consumer<TasksCollection>(builder: (context, tasks, child) {
      return CupertinoListTile(
        title: Text(
          task.content,
          style: tasks.isSelected(task)
              ? const TextStyle(color: Color.fromARGB(255, 153, 0, 0))
              : const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        // subtitle: const Text('test'),
        trailing: CupertinoButton(
          child: Icon(icon),
          onPressed: () => tasks.check(task),
        ),
        onTap: () => tasks.onTapSelect(task),
      );
    });
  }
}
