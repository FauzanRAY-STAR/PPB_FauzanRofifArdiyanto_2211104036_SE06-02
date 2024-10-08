import 'package:flutter/material.dart';

void main() {
  runApp(WisataApp());
}

class WisataApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Rekomendasi Wisata',
              style: TextStyle(color: Colors.black), // Warna teks hitam
            ),
          ),
          backgroundColor: Colors.lightBlueAccent, // Background warna biru muda
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Klenteng Sam Poo Kong',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold, // Teks bold
                  ),
                ),
                SizedBox(height: 20),
                Image.network(
                  'https://ik.imagekit.io/tvlk/blog/2023/01/Klenteng-Sam-Poo-Kong-Traveloka-Xperience.jpg', // URL gambar tempat wisata
                  height: 200,
                ),
                SizedBox(height: 20),
                Text(
                  'Sam Poo Kong adalah klenteng bersejarah di Semarang, Jawa Tengah, yang terkait dengan Laksamana Cheng Ho dari Tiongkok. Tempat ini diyakini sebagai tempat peristirahatan Cheng Ho saat terdampar di Semarang pada abad ke-15. Awalnya berupa gua, kini berkembang menjadi kompleks klenteng dengan arsitektur Tiongkok yang khas. Selain sebagai tempat ibadah bagi komunitas Tionghoa, Sam Poo Kong juga menjadi simbol toleransi, kerukunan beragama, dan objek wisata budaya yang populer di kota tersebut.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Aksi yang diinginkan ketika tombol ditekan
                    print('Kunjungi Tempat ditekan');
                  },
                  child: Text('Kunjungi Sekarang'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
