import 'package:flutter/material.dart';

class FlexibleExpanded extends StatelessWidget {
  const FlexibleExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible vs Expanded"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Text(
            "Flexible",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 100,
                color: Colors.redAccent,
              ),
              Flexible(
                child: Container(
                  height: 100,
                  color: Colors.lightGreen,
                  child: Text(
                      "This is flexible widget, ir takes up remaining space but can chirnk if needed"),
                ),
              ),
              Icon(Icons.sentiment_satisfied_alt_outlined)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Expanded",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 100,
                color: Colors.redAccent,
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.lightGreen,
                  child: Text(
                      "This is Expended Widget, it forces the widget to take up all the remaining space"),
                ),
              ),
              Icon(Icons.sentiment_satisfied_alt_outlined)
            ],
          ),
        ],
      ),
    );
  }
}
