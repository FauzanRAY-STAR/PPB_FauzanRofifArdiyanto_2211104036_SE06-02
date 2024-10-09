import 'package:flutter/material.dart';

class FauzanStackScreen extends StatelessWidget {
  const FauzanStackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lathian Stack'),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                height: 100,
                width: 100,
                color: Colors.lightBlue,
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 3, 46, 66),
              ),
              Container(
                margin: EdgeInsets.all(15),
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 166, 204, 221),
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 42, 69, 81),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Container(
            height: 250,
            width: 250,
            child: Stack(
              children:<Widget> [
                Container(width: 250,
                height: 250,
                color:Colors.white,
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Colors.black.withAlpha(0),Colors.black12,Colors.black45
                    ],
                    ),
                  ),
                  child: Text('Foreground Text',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
