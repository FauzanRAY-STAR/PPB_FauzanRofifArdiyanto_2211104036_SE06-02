import 'package:flutter/material.dart';

class MyTabbar extends StatelessWidget {
  const MyTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Menu Tab Bar"),
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.food_bank),
                text: "Menu",
              ),
              Tab(
                icon: Icon(Icons.calendar_month),
                text: "Kalender",
              ),
              Tab(
                icon: Icon(Icons.history),
                text: "History",
              ),
            ]),
            backgroundColor: Colors.lightBlue,
          ),
          body: const TabBarView(children: [
            Center(
              child: Text("Ini Konten Menu"),
            ),
            Center(
              child: Text("Ini Konten Kalender"),
            ),
            Center(
              child: Text("Ini Konten History"),
            ),
          ]),
        ));
  }
}
