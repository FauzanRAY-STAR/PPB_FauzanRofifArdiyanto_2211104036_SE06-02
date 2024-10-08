import 'dart:io';

void cetakPiramida(int tinggi) {
  for (int i = 1; i <= tinggi; i++) {
    // Menampilkan spasi
    for (int j = 1; j <= tinggi - i; j++) {
      stdout.write(' ');
    }
    // Menampilkan bintang
    for (int k = 1; k <= 2 * i - 1; k++) {
      stdout.write('*');
    }
    print('');
  }
}

void main() {
  stdout.write('Masukkan tinggi piramida: ');
  int tinggi = int.parse(stdin.readLineSync()!);
  cetakPiramida(tinggi);
}
