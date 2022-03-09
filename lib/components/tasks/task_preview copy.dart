import 'package:todolist/models/task.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class TaskPreview extends StatelessWidget {
  const TaskPreview({Key? key, required this.task}) : super(key: key);

  final Task task;
  void _check() {
    if (task.completed) {
      task.completed = false;
    } else {
      task.completed = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    var icon;
    if (task.completed) {
      icon = CupertinoIcons.checkmark_rectangle;
    } else {
      icon = CupertinoIcons.rectangle;
    }

    return CupertinoListTile(
      title: Text(task.content),
      subtitle: Text('test'),
      trailing: CupertinoButton(
        child: Icon(icon),
        onPressed: () => _check(),
      ),
    );
  }
}
