import 'package:flutter/cupertino.dart';
import 'task_preview.dart';
import 'task_details.dart';
import 'package:todolist/models/task.dart';

class TaskMaster extends StatefulWidget {
  const TaskMaster({Key? key, required this.tasks}) : super(key: key);

  final List<Task> tasks;

  @override
  State<TaskMaster> createState() => _TaskMasterState();
}

class _TaskMasterState extends State<TaskMaster> {
  Task? selected; //product will be null initially

  void onTaskSelected(Task task) {
    setState(() {
      selected = task;
      //when selectedProduct has a value, ProductDetails widget is displayed
    });
  }

  void hideDetails() {
    setState(() {
      selected = null;
      //when selectedProduct is null ProductDetails widget is hidden
    });
  }

  //affichage conditionnel
  Widget _showDetailsWhenProductIsSelected() {
    return (selected != null)
        ? TaskDetails(task: selected, onHide: hideDetails)
        : Container();
  }

  bool _isSelected(int index) {
    return selected == widget.tasks[index];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _showDetailsWhenProductIsSelected(),
        Expanded(
          child: ListView.builder(
            itemCount: widget.tasks.length,
            itemBuilder: (context, index) {
              return TaskPreview(
                task: widget.tasks[index],
                onSelect: onTaskSelected,
                selected: _isSelected(index),
              );
            },
          ),
        ),
      ],
    );
  }
}
