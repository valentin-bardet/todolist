import 'package:flutter/cupertino.dart';
import 'package:todolist/screens/all_tasks.dart';
import 'package:todolist/data/tasks.dart' as data;

// import 'package:flutter_launcher_icons/ios.dart';

void main() {
  runApp(const TodoList());
}

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'TodoList',
      theme: const CupertinoThemeData(
        brightness: Brightness.light,
        primaryColor: CupertinoColors.activeGreen,
      ),
      home: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemOrange,
          middle: Text(
            'Todo List',
            style: TextStyle(fontFamily: 'Monserat'),
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 90.0),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
