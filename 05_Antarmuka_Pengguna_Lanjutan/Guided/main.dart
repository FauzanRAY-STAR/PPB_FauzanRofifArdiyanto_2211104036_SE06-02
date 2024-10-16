import 'package:flutter/material.dart';
import 'package:prak5/custom.dart';
import 'package:prak5/flexible_expanded.dart';
import 'package:prak5/jenis_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Custom(),
      //FlexibleExpanded(),
      //JenisListView(),
    );
  }
}
