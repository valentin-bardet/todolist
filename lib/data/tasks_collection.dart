import 'package:flutter/cupertino.dart';
import 'package:todolist/data/tasks.dart' as data;
import 'package:todolist/models/task.dart';

class TasksCollection extends ChangeNotifier {
  final List<Task> tasks = data.tasks;
  late Task? selected = null;
  void add(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  remove(Task task) {
    tasks.remove(task);
    notifyListeners();
  }

  void update(Task task) {
    var index = tasks.indexOf(task);
    tasks[index] = task;
    notifyListeners();
  }

  Task? selectedOne() {
    return selected;
  }

  deleteSelected() {
    tasks.remove(selected);
    print("task deleted");
    notifyListeners();
    hideDetails();
  }

  String contentSelected() {
    return selected!.content;
  }

  String createdAtSelected() {
    return selected!.createdAt.toString();
  }

  Task findAt(int index) {
    return tasks[index];
  }

  int length() {
    return tasks.length;
  }

  void onTaskSelected(Task task) {
    selected = task;
    notifyListeners();
  }

  void hideDetails() {
    selected = null;
    notifyListeners();
  }

  bool isSelected(Task task) {
    if (selected == task) {
      return true;
    } else {
      return false;
    }
  }

  bool somthingSelected() {
    if (selected != null) {
      return true;
    } else {
      return false;
    }
  }

  void onTapSelect(Task task) {
    selected = task;
    notifyListeners();
  }

  void check(Task task) {
    task.completed = !task.completed;
    notifyListeners();
  }
}
