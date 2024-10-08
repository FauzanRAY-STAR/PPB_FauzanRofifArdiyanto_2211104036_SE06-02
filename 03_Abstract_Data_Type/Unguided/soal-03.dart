import 'dart:io';

bool cekPrima(int bilangan) {
  if (bilangan < 2) {
    return false;
  }
  for (int i = 2; i <= bilangan ~/ 2; i++) {
    if (bilangan % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  stdout.write('Masukkan bilangan: ');
  int bilangan = int.parse(stdin.readLineSync()!);
  if (cekPrima(bilangan)) {
    print('$bilangan adalah bilangan prima');
  } else {
    print('$bilangan bukan bilangan prima');
  }
}
