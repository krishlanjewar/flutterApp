import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final int _num = 0;
  final int _num1 = 0;
  final int _num2 = 0;
  final int _num3 = 0;
  final int _ans = 0;

  // method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [Text("clu"), Icon(Icons.calculate)],
        ),
        backgroundColor: Color.fromRGBO(202, 99, 197, 0.837),
      ),
      body: Container(
  color: const Color.fromARGB(255, 196, 204, 84),
  child: Column(
    children: [
     
    ],
  ),
),
    );
  }
}
