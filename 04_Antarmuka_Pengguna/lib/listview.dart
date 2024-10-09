import 'package:flutter/material.dart';

class FauzanListView extends StatelessWidget {
  const FauzanListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan List View'),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(scrollDirection: Axis.horizontal, children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.lightGreenAccent,
          child: Center(
            child: Text('Type A'),
          ),
        ),
        Container(
          height: 200,
          width: 200,
          color: const Color.fromARGB(255, 72, 114, 24),
          child: Center(
            child: Text('Type B'),
          ),
        ),
        Container(
          height: 200,
          width: 200,
          color: const Color.fromARGB(255, 88, 146, 21),
          child: Center(
            child: Text('Type C'),
          ),
        ),
        Container(
          height: 200,
          width: 200,
          color: const Color.fromARGB(255, 171, 211, 125),
          child: Center(
            child: Text('Type D'),
          ),
        ),
        Container(
          height: 200,
          width: 200,
          color: const Color.fromARGB(255, 46, 71, 18),
          child: Center(
            child: Text('Type E'),
          ),
        ),
        Container(
          height: 200,
          width: 200,
          color: const Color.fromARGB(255, 126, 230, 7),
          child: Center(
            child: Text('Type F'),
          ),
        ),
      ]),
    );
  }
}
