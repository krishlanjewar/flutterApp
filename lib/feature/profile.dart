import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // Simulated 20 local image paths (make sure these exist in your assets folder)
  final List<String> imagePaths = List.generate(
    11,
    (index) => 'assets/img${index + 1}.jpg',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text("pro "),
            const Icon(Icons.rocket_sharp),
          ],
        ),
        backgroundColor: const Color.fromRGBO(202, 99, 197, 0.837),
      ),
      body: Container(
        color: const Color.fromARGB(255, 88, 180, 149),
        child: ListTile(
          leading: Icon(Icons.calculate_rounded),
          title: Text("C A L C U L A T E"),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/clu');
          },
        ),
      ),
         
    );
  }
}
