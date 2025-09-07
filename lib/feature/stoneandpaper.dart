import 'package:flutter/material.dart';

class Stoneandpaper extends StatefulWidget {
  const Stoneandpaper({super.key});

  @override
  State<Stoneandpaper> createState() => _StoneandpaperState();
}

class _StoneandpaperState extends State<Stoneandpaper> {
  // method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [Text("stone "), Icon(Icons.storm_outlined)]),
        backgroundColor: Color.fromRGBO(202, 99, 197, 0.837),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(155, 79, 81, 81),
                    height: 250,
                    child:  Center(
                      child: Text(
                        "stone",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 204, 202, 205),
                          letterSpacing: 2,
                          fontStyle: FontStyle.italic,
                          shadows: [
                            Shadow(
                              blurRadius: 4,
                              color: Colors.black26,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 9),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 208, 202, 96),
                    height: 250,
                    child: Center(
                      child: Text(
                        "paper",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 220, 216, 182),
                          letterSpacing: 2,
                          fontStyle: FontStyle.italic,
                          shadows: [
                            Shadow(
                              blurRadius: 4,
                              color: Colors.black26,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 9),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 227, 111, 103),
                    height: 250,
                    child: Center(
                      child: Text(
                        "siccor",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 213, 218, 120),
                          letterSpacing: 2,
                          fontStyle: FontStyle.italic,
                          shadows: [
                            Shadow(
                              blurRadius: 4,
                              color: Colors.black26,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
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
