import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPackage extends StatefulWidget {
  const MyPackage({super.key});

  @override
  State<MyPackage> createState() => _MyPackageState();
}

class _MyPackageState extends State<MyPackage> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Belajar Package",
            style: GoogleFonts.lato(),
          ),
          backgroundColor: Colors.lightBlue),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const TextField(
                obscureText: false,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Masukkan Username",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 18,
              ),
              const TextField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Masukkan Password",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Ini adalah Elevated Button',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent),
              ),
              SizedBox(height: 15),
              TextButton(
                // style: TextButton.styleFrom(
                //   backgroundColor: Colors.amberAccent,
                // ),
                onPressed: () {},
                child: Text(
                  'Ini adalah Text Button',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 50),
              DropdownButton<String>(
                  isExpanded: true,
                  value: selectedValue,
                  items: <String>['Opsi 1', 'Opsi 2', 'Opsi 3']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue;
                    });
                  })
            ],
          )),
    );
  }
}
