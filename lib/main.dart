import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/home.dart';
import 'package:flutter_application_1/feature/setting.dart';
import 'package:flutter_application_1/feature/stoneandpaper.dart';
import 'package:flutter_application_1/feature/calculator.dart';
import 'package:flutter_application_1/feature/profile.dart';
import 'package:flutter_application_1/feature/todo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
      routes: {
        '/home': (context) => home(),
        '/setting': (context) => Setting(),
        '/profile': (context) => Profile(),
        '/clu':(context)=> Calculator(),
        '/stone':(context)=> Stoneandpaper(),
        '/todo':(context)=> Todo(),
      },
      theme: ThemeData(primaryColor: Color.fromARGB(218, 207, 211, 83)),
    
    );
  }
}
