import 'package:todolist/models/task.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:provider/provider.dart';
import 'package:todolist/data/tasks_collection.dart';

class TaskPreview extends StatefulWidget {
  const TaskPreview(
      {Key? key, required this.task, this.selected, required this.onSelect})
      : super(key: key);

  final Task task;
  final Task? selected;
  final Function onSelect;

  @override
  State<TaskPreview> createState() => _TaskPreviewState();
}

class _TaskPreviewState extends State<TaskPreview> {
  late Task task;
  late Task? selected;
  late Function onSelect;
  // late bool selected;
  // late Function onSelect;

  void initState() {
    super.initState();
    task = widget.task;
    onSelect = widget.onSelect;
    selected = widget.selected;
  }

  void onTap() {
    onSelect(task);
  }

  // void _check() {
  //   setState(() {
  //     task.completed = !task.completed;
  //   });
  // }

  bool isSelected(Task task) {
    if (selected == task) {
      return true;
    } else {
      return false;
    }
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
          style: isSelected(task)
              ? const TextStyle(color: Color.fromARGB(255, 153, 0, 0))
              : const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        // subtitle: const Text('test'),
        trailing: CupertinoButton(
          child: Icon(icon),
          onPressed: () => tasks.check(task),
        ),
        onTap: () => onTap(),
      );
    });
  }
}
