import 'package:flutter/material.dart';

class Todotile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

   Todotile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
        
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25.0,right:25.0,top:25.0),
      child: Row(
        children: [
          // check box
           Checkbox(
            value:taskCompleted, 
            onChanged: onChanged,
            activeColor: Color.fromARGB(90, 46, 51, 78),
            ),

          // task name
          
          Container(
            padding: EdgeInsets.all(23.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(148, 131, 233, 36),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              taskName,
              style: TextStyle(
                decoration: taskCompleted
                ? TextDecoration.lineThrough
                : TextDecoration.none,
              ),
              ),
              ),
        ],
      ),
    );
  }
}
