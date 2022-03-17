import 'package:flutter/cupertino.dart';
import 'package:todolist/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todolist/data/tasks_collection.dart';

// final tasks = data.tasks;

class TaskDetails extends StatelessWidget {
  const TaskDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Container(
        margin: const EdgeInsets.only(top: 100),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 0,
          ),
          child: Consumer<TasksCollection>(builder: (context, tasks, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(tasks.contentSelected()),
                Text(tasks.createdAtSelected()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CupertinoButton(
                      child: const Icon(CupertinoIcons.delete_simple),
                      onPressed: () => tasks.deleteSelected(),
                    ),
                    CupertinoButton(
                      child: const Icon(CupertinoIcons.arrow_2_circlepath),
                      onPressed: () => tasks.deleteSelected(),
                    ),
                  ],
                ),
                CupertinoButton(
                  child: const Icon(CupertinoIcons.clear_thick),
                  onPressed: () => tasks.deleteSelected(),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
