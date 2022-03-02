import 'package:flutter/cupertino.dart';
import 'package:todolist/models/task.dart';

class Tasks extends StatelessWidget {
  Tasks({Key? key}) : super(key: key);
  @override
  final List<Task> listTasks = [
    Task(1, true, 'tache1', DateTime.now()),
    Task(2, true, 'tache2', DateTime.now()),
    Task(3, false, 'tache3', DateTime.now()),
    Task(4, false, 'tache4', DateTime.now()),
    Task(5, true, 'tache5', DateTime.now()),
    Task(6, false, 'tache6', DateTime.now()),
    Task(7, true, 'tache7', DateTime.now()),
    Task(8, true, 'tache8', DateTime.now()),
    Task(9, false, 'tache9', DateTime.now()),
    Task(10, false, 'tache10', DateTime.now()),
    Task(11, true, 'tache11', DateTime.now()),
    Task(12, false, 'tache12', DateTime.now()),
    Task(13, true, 'tache13', DateTime.now()),
    Task(14, false, 'tache14', DateTime.now()),
    Task(15, true, 'tache15', DateTime.now()),
  ];
  Widget build(BuildContext context) {
    return Container();
  }
}
