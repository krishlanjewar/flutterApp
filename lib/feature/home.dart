import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _home();
}

class _home extends State<home> {
  // variable
  int _counter = 0;
  // String _rName = " Relatoin name  ";

  // method
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  // ui
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [Text("ME care "), Icon(Icons.emoji_food_beverage_outlined)],
        ),
        actions: [
          IconButton(
            onPressed: (){ 
            Navigator.pushNamed(context, '/profile');
            },
            icon:Icon(Icons.person),
            )
        ],
        backgroundColor: Color.fromRGBO(202, 99, 197, 0.837),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(192, 203, 100, 114),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
           DrawerHeader(
  // decoration: BoxDecoration(color: Colors.white),
  child: Center(
    child: ClipOval(
      child: Image.asset(
        'assets/img12.jpg',
        width: 100,  // set width
        height: 100, // set height
        fit: BoxFit.cover,
      ),
    ),
  ),
),

            ListTile(
              leading: Icon(Icons.favorite_sharp),
              title: Text(" H O M E"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate_rounded),
              title: Text("C A L C U L A T E"),
                onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context,  '/clu');
              },
            ),
            ListTile(
              leading: Icon(Icons.gamepad_outlined),
              title: Text(" ROCK PAPPER SISCCOUR"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context,  '/stone');
              },
            ),
            ListTile(
              leading: Icon(Icons.person), 
              title: Text("P R O F I L E"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/profile');
              },
              ),
              ListTile(
              leading: Icon(Icons.checklist_rtl_outlined),
              title: Text(" TO DO LIST "),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/todo');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S "),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/setting');
              },
            ),
          ],
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 10,10),
              child: Row(
                children: [
                  Text("we are together from  : "),
                  Text(_counter.toString(), style: TextStyle(fontSize: 50)),
                  Icon(Icons.flaky),
                ],
              ),
            ),
            // button
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 10,10),
              child: Row(
                children: [
              ElevatedButton(
                onPressed: _incrementCounter,
                child: Text("Increment Day"),
              ),
              SizedBox(
                height:25,
                width: 10,
              ),
              ElevatedButton(
                onPressed: _decrementCounter,
                child: Text("Decrement Day"),
              ),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
