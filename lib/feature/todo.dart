import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/ToDoTile.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(175, 108, 215, 107),
      appBar: AppBar(
        title:Row(
          children: [
            Icon(Icons.list_alt_sharp),
             Text("To Do ") ,
          ]
      ),
       elevation:100,
      // actions: [],
      ),
          //  body: ListView.builder(
                      //  1:20:40
          //  ),
    );
  }
}