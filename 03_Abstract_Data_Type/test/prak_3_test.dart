import 'package:prak_3/prak_3.dart';
import 'package:test/test.dart';

void main() {
  // String firstName = 'Praktikum';
  // var lastName = 'PPB';
  // final cuaca = 'Cerah';

  var open = 8;
  var close = 17;
  var now = 5;

  if (now >= open && now < close) {
    print("Toko Buka");
  } else if (now == 12) {
    print("Toko sedang Istirahat");
  } else {
    print("Toko Tutup");
  }

  //condition ? true : false
  var toko = now > open ? "Toko Buka" : "Toko Tutup";
  print(toko);

  //print('Hari ini $firstName $lastName dan juga hari ini $cuaca');

  // Switch Case

  // var gue = 'e';

  // switch (gue) {
  //   case 'a':
  //     print('Gue ganteng dan kaya');
  //     break;
  //   case 'b':
  //     print('Gue kaya');
  //     break;
  //   case 'c':
  //     print('Gue ganteng');
  //     break;
  //   default:
  //     print("Gue anak mama");
  // }
}
