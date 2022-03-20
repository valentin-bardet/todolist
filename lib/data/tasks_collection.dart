import 'package:flutter/cupertino.dart';
import 'package:todolist/data/tasks.dart' as data;
import 'package:todolist/models/task.dart';
import 'package:todolist/screens/all_tasks.dart';

class TasksCollection extends ChangeNotifier {
  final List<Task> tasks = data.tasks;
  late Task? selected = null;
  void add(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  // remove(Task task) {
  //   tasks.remove(task);
  //   notifyListeners();
  // }

  void update(Task task, String text, context) {
    var index = tasks.indexOf(task);
    tasks[index].content = text;
    Navigator.pop(context);
    notifyListeners();
  }

  void create(String text, bool state) {
    tasks.insert(
        0,
        Task(
          1,
          state,
          text,
          DateTime.now(),
        ));
    notifyListeners();
  }

  Task? selectedOne() {
    return selected;
  }

  void delete(Task? task) {
    tasks.remove(task);
    hideDetails();
    notifyListeners();
  }

  deleteSelected() {
    // print(selected.content);
    // tasks.removeWhere((task) => task.id == selected!.id);
    // print("task deleted");
    // print(selected!.id);
    // selected = null;
    // tasks.remove(selected);
    Task t = Task(
      selected!.id,
      selected!.completed,
      selected!.content,
      selected!.createdAt,
    );
    print(tasks.remove(t));
    notifyListeners();
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

  bool getCompletd() {
    return selected!.completed;
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

  void checkSeleted() {
    selected!.completed = !selected!.completed;
    notifyListeners();
  }

  bool isChecked() {
    return selected!.completed;
  }
}
