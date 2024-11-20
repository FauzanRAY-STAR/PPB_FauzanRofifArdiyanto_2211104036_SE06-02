import 'package:flutter/material.dart';
import 'database_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata Mahasiswa',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final dbHelper = DatabaseHelper.instance;
  List<Map<String, dynamic>> biodataList = [];

  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _domisiliController = TextEditingController();
  final _hobiController = TextEditingController();

  void _refreshData() async {
    final data = await dbHelper.queryAll();
    setState(() {
      biodataList = data;
    });
  }

  void _insertData() async {
    if (_namaController.text.isNotEmpty &&
        _nimController.text.isNotEmpty &&
        _domisiliController.text.isNotEmpty &&
        _hobiController.text.isNotEmpty) {
      await dbHelper.insert({
        'nama': _namaController.text,
        'nim': _nimController.text,
        'domisili': _domisiliController.text,
        'hobi': _hobiController.text,
      });
      _namaController.clear();
      _nimController.clear();
      _domisiliController.clear();
      _hobiController.clear();
      _refreshData();
    }
  }

  @override
  void initState() {
    super.initState();
    _refreshData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Biodata Mahasiswa')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _namaController, decoration: const InputDecoration(labelText: 'Nama')),
            TextField(controller: _nimController, decoration: const InputDecoration(labelText: 'NIM')),
            TextField(controller: _domisiliController, decoration: const InputDecoration(labelText: 'Domisili')),
            TextField(controller: _hobiController, decoration: const InputDecoration(labelText: 'Hobi')),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: _insertData, child: const Text('Tambah')),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: biodataList.length,
                itemBuilder: (context, index) {
                  final biodata = biodataList[index];
                  return ListTile(
                    title: Text('${biodata['nama']} (${biodata['nim']})'),
                    subtitle: Text('${biodata['domisili']} - ${biodata['hobi']}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
