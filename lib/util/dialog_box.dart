import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/util/mybut.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(159, 235, 175, 199),
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add new Task",
                ),
            ),
            // button save or canccel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Mybut(text: "cancel", onPressed: (){}),
                 const SizedBox(width: 9),
                Mybut(text: "save", onPressed: (){}),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
