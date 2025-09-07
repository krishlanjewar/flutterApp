import 'package:flutter/material.dart';

class Todotile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

   Todotile({
    super.key,
    required this.onChanged,
    required this.taskCompleted,
    required this.taskName,    
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        children: [
          // check box
           Checkbox(value:taskCompleted, onChanged: onChanged),

          // task name
          
          Container(
            padding: EdgeInsets.all(23.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(148, 131, 233, 36),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(taskName),
          ),
        ],
      ),
    );
  }
}
