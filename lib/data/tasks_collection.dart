import 'package:flutter/cupertino.dart';
import 'package:todolist/data/tasks.dart' as data;
import 'package:todolist/models/task.dart';

class TasksCollection extends ChangeNotifier {
  final List<Task> tasks = data.tasks;

  void add(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void update(Task task) {
    var index = tasks.indexOf(task);
    tasks[index] = task;
    notifyListeners();
  }

  void delete(Task task) {
    //print(task.content);
    // var i = 0;
    // var value = 0;
    // for (var a in tasks) {
    //   if (a == task) {
    //     value = i;
    //     print("value");
    //     print(tasks[value].content);
    //   }
    //   i++;
    // }
    // tasks.remove(tasks[value]);
    // print('removed');
    // for (var a in tasks) {
    //   print(a.content);
    // }
    tasks.remove(task);
    notifyListeners();
  }

  void check(Task task) {
    task.completed = !task.completed;
    notifyListeners();
  }

  // String createdAtSelected() {
  //   return selected!.createdAt.toString();
  // }

  Task findAt(int index) {
    return tasks[index];
  }

  // int length() {
  //   return tasks.length;
  // }

  // void onTaskSelected(Task task) {
  //   selected = task;
  //   notifyListeners();
  // }

  // void hideDetails() {
  //   selected = null;
  //   notifyListeners();
  // }

  // bool somthingSelected() {
  //   if (selected != null) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  // void onTapSelect(Task task) {
  //   selected = task;
  //   notifyListeners();
  // }
}
