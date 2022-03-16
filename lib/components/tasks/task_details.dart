import 'package:flutter/cupertino.dart';
import 'package:todolist/models/task.dart';
import 'package:cupertino_list_tile/cupertino_list_tile.dart';

// final tasks = data.tasks;

class TaskDetails extends StatelessWidget {
  const TaskDetails({
    Key? key,
    required this.task,
    required this.onHide,
    required this.onDelete,
  }) : super(key: key);

  final Task? task;
  final Function onHide;
  final Function onDelete;
  // final Function onReload;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Container(
        margin: const EdgeInsets.only(top: 100),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 4,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(task!.content),
              Text(task!.createdAt.toString()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CupertinoButton(
                    child: const Icon(CupertinoIcons.delete_simple),
                    onPressed: () => onDelete(task!),
                  ),
                  CupertinoButton(
                    child: const Icon(CupertinoIcons.arrow_2_circlepath),
                    onPressed: () => onHide(),
                  ),
                ],
              ),
              CupertinoButton(
                child: const Icon(CupertinoIcons.clear_thick),
                onPressed: () => onHide(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
