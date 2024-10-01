import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata Saya',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BiodataPage(),
    );
  }
}

class BiodataPage extends StatelessWidget {
  final List<Color> cardColors = [
    Colors.red.shade100,
    Colors.green.shade100,
    Colors.blue.shade100,
    Colors.orange.shade100,
    Colors.purple.shade100,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Biodata Saya', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.indigo.shade50, Colors.indigo.shade100],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.indigo, width: 4),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8.0,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('../assets/fotoku.jpg'),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ...List.generate(5, (index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 16.0),
                    child: Card(
                      elevation: 5,
                      color: cardColors[index],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListTile(
                        leading: Icon(
                          [
                            Icons.person,
                            Icons.cake,
                            Icons.location_on,
                            Icons.school,
                            Icons.interests
                          ][index],
                          color: Colors.indigo,
                        ),
                        title: Text(
                          [
                            'Nama',
                            'Tanggal Lahir',
                            'Alamat',
                            'Pendidikan',
                            'Hobi'
                          ][index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo.shade700),
                        ),
                        subtitle: Text(
                          [
                            'Fauzan Rofif Ardiyanto',
                            '14 Mei 2003',
                            'Jl. Bodong Raya',
                            'S1 Rekayasa Perangkat Lunak',
                            'Lari, Renang'
                          ][index],
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
