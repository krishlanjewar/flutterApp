import 'package:flutter/material.dart';

class Mybut extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  Mybut({
    super.key,
    required this.text,
    required this.onPressed, 
    });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color:Theme.of(context).primaryColor ,
      child: Text(text),
      // 1:32:00
      );
  }
}
