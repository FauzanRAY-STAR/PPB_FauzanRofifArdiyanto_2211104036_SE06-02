
import 'package:flutter/material.dart';

class MyNotificationScreen extends StatelessWidget {
  final String payload;

  const MyNotificationScreen({super.key, required this.payload});

  @override
  Widget build(BuildContext context) {
    // Parse payload data into individual details
    final Map<String, String> notificationData =
        Uri.splitQueryString(payload);

    return Scaffold(
      appBar: AppBar(title: const Text('Notification Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama: ${notificationData['nama']}', style: TextStyle(fontSize: 18)),
            Text('NIM: ${notificationData['nim']}', style: TextStyle(fontSize: 18)),
            Text('Kelas: ${notificationData['kelas']}', style: TextStyle(fontSize: 18)),
            Text('Prodi: ${notificationData['prodi']}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
