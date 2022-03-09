import 'package:todolist/models/task.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_list_tile/cupertino_list_tile.dart';

class TaskPreview extends StatefulWidget {
  const TaskPreview(
      {Key? key,
      required this.task,
      required this.onSelect,
      required this.selected})
      : super(key: key);

  final Task task;
  final bool selected;
  final Function onSelect;

  @override
  State<TaskPreview> createState() => _TaskPreviewState();
}

class _TaskPreviewState extends State<TaskPreview> {
  late Task task;
  late bool selected;
  late Function onSelect;

  void initState() {
    super.initState();
    task = widget.task;
    selected = widget.selected;
    onSelect = widget.onSelect;
  }

  void onTap() {
    onSelect(task);
  }

  void _check() {
    setState(() {
      task.completed = !task.completed;
    });
  }

  @override
  Widget build(BuildContext context) {
    var icon;
    if (task.completed) {
      icon = CupertinoIcons.chevron_down_square_fill;
    } else {
      icon = CupertinoIcons.square;
    }

    return CupertinoListTile(
      title: Text(
        task.content,
        style: selected
            ? TextStyle(color: Color.fromARGB(255, 153, 0, 0))
            : TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
      ),
      // subtitle: const Text('test'),
      trailing: CupertinoButton(
        child: Icon(icon),
        onPressed: () => _check(),
      ),
      onTap: () => onTap(),
    );
  }
}
