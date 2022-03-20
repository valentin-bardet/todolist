import 'package:flutter/Cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todolist/data/tasks_collection.dart';
import 'package:todolist/models/task.dart';

class TaskForm extends StatefulWidget {
  TaskForm({Key? key}) : super(key: key);
  @override
  _TaskFormState createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {
  bool state = false;
  Task task = Task(9999, false, 'oui', DateTime.now());
  final myController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var icon;
    return Consumer<TasksCollection>(
      builder: (context, tasks, child) {
        task = tasks.selected!;
        var placeholder = 'valeur';
        placeholder = task.content;
        myController.text = placeholder;
        return Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CupertinoTextFormFieldRow(
                autofocus: false,
                prefix: const Text('Content',
                    style: TextStyle(color: CupertinoColors.activeBlue)),
                // initialValue: placeholder,
                placeholder: placeholder,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a content';
                  }
                  return null;
                },
                controller: myController,
              ),
              Row(
                children: [
                  const Text('     Completed  ?'),
                  CupertinoButton(
                    child: tasks.selected!.completed
                        ? const Icon(CupertinoIcons.chevron_down_square_fill)
                        : const Icon(CupertinoIcons.square),
                    onPressed: () => tasks.check(task),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CupertinoButton(
                    child: const Text('Save'),
                    color: CupertinoColors.activeBlue,
                    borderRadius: BorderRadius.circular(10),
                    onPressed: () =>
                        tasks.update(task, myController.text, context),
                  ),
                  CupertinoButton(
                      child: const Text('Delete'),
                      color: CupertinoColors.systemRed,
                      borderRadius: BorderRadius.circular(10),
                      onPressed: () => Navigator.pop(context)),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
