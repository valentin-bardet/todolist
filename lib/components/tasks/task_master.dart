import 'package:flutter/cupertino.dart';
import 'task_preview.dart';
import 'task_details.dart';
import 'package:todolist/models/task.dart';

import 'package:provider/provider.dart';
import 'package:todolist/data/tasks_collection.dart';

class TaskMaster extends StatefulWidget {
  const TaskMaster({Key? key}) : super(key: key);

  @override
  State<TaskMaster> createState() => _TaskMasterState();
}

class _TaskMasterState extends State<TaskMaster> {
  @override

  //affichage conditionnel
  Widget _showDetailsWhenProductIsSelected() {
    return Consumer<TasksCollection>(builder: (context, tasks, child) {
      return (tasks.selectedOne() != null) ? const TaskDetails() : Container();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _showDetailsWhenProductIsSelected(),
        Consumer<TasksCollection>(builder: (context, tasks, child) {
          return Expanded(
            child: ListView.builder(
              itemCount: tasks.length(),
              itemBuilder: (context, index) {
                return TaskPreview(
                  task: tasks.findAt(index),
                );
              },
            ),
          );
        }),
      ],
    );
  }
}
