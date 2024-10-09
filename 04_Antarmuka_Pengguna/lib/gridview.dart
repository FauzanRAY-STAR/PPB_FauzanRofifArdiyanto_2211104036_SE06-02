import 'package:flutter/material.dart';

class FauzanGrid extends StatefulWidget {
  const FauzanGrid({super.key});

  @override
  State<FauzanGrid> createState() => _FauzanGridState();
}

class _FauzanGridState extends State<FauzanGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Praktikum 4'),
        backgroundColor: Colors.blueAccent[700],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: EdgeInsets.all(12),
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text('GridView 1'),
            color: Colors.amberAccent,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('GridView 2'),
            color: Colors.greenAccent,
          ),
          Container(  
            padding: EdgeInsets.all(10),
            child: Text('GridView 3'),
            color: Colors.lightGreen,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('GridView 4'),
            color: const Color.fromARGB(255, 168, 217, 8),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('GridView 5'),
            color: const Color.fromARGB(255, 89, 20, 153),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('GridView 6'),
            color: const Color.fromARGB(255, 156, 3, 135),
          ),
        ],
      ),
    );
  }
}
