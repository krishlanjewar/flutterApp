import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/ToDoTile.dart';
import 'package:flutter_application_1/util/dialog_box.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  // List of todo Task
  List toDoList = [
    ["Make Tutorial", false],
    ["Spiritulality", false],
    ["Make Food", false],
    ["Spiritulality Mantar", false],
  ];
  // check box change
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] != toDoList[index][1];
    });
  }

  // creat new task
  void creatNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(175, 108, 215, 107),
      appBar: AppBar(
        title: Row(children: [Icon(Icons.list_alt_sharp), Text("To Do ")]),
        elevation: 100,
        // actions: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: creatNewTask,
        child: Icon(Icons.fitness_center),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return Todotile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}
