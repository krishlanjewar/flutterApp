import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  // method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [Text(" setting "), Icon(Icons.settings)]),
        backgroundColor: Color.fromRGBO(202, 99, 197, 0.837),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            width: 400,
            
            color: const Color.fromARGB(255, 111, 2, 51),
            child: Column(
              children: [
                Text(
                  "find it on your own in real world ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 194, 149, 238),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
