import 'package:flutter/cupertino.dart';
import 'package:todolist/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todolist/data/tasks_collection.dart';

// final tasks = data.tasks;

class TaskDetails extends StatelessWidget {
  const TaskDetails({Key? key, required this.selected, required this.hide})
      : super(key: key);
  final Task selected;
  final Function hide;

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
          child: Consumer<TasksCollection>(builder: (context, tasks, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(selected.content),
                Text(selected.createdAt.toString()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CupertinoButton(
                      child: const Icon(CupertinoIcons.delete_simple),
                      onPressed: () => tasks.delete(selected),
                    ),
                    CupertinoButton(
                      child: const Icon(CupertinoIcons.arrow_2_circlepath),
                      onPressed: () => hide(),
                    ),
                  ],
                ),
                CupertinoButton(
                  child: const Icon(CupertinoIcons.clear_thick),
                  onPressed: () => hide(),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
