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
  void initState() {
    super.initState();
  }

  Task? selected;
  void onTaskSelected(Task task) {
    setState(() {
      selected = task;
    });
  }

  hideDetails() {
    setState(() {
      selected = null;
    });
  }

  //affichage conditionnel
  Widget _showDetailsWhenProductIsSelected() {
    return (selected != null)
        ? TaskDetails(selected: selected!, hide: hideDetails)
        : Container();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _showDetailsWhenProductIsSelected(),
        Expanded(
          child: ListView.builder(
            itemCount: Provider.of<TasksCollection>(context, listen: false)
                .tasks
                .length,
            itemBuilder: (context, index) {
              return TaskPreview(
                task: Provider.of<TasksCollection>(context, listen: false)
                    .tasks[index],
                selected: selected,
                onSelect: onTaskSelected,
              );
            },
          ),
        ),
      ],
    );
  }
}
