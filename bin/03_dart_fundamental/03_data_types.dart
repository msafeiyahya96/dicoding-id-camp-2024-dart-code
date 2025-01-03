/* 
  Tipe Data Dart
  Tipe    | Deskripsi                                       | Contoh
  int     | Integer                                         | 5, -7, 0
  num     | Bilangan Bulat dan Bilangan Desimal             | 5, 3.14, -99.00
  double  | Bilangan Desimal                                | 3.14, 18.0, -12.12
  bool    | Boolean                                         | true, false
  String  | Teks yang terdiri dari 0 atau beberapa karakter | 'Dicoding', 'Y', ''
  List    | Daftar Nilai                                    | [1, 2, 3], ['a', 'b', 'c']
  Map     | Pasangan key-value                              | {"x": 4, "y": 10}
  dynamic | Tipe Apapun
*/

import 'dart:io';

void main() {
  // Example 1
  var x; // dynamic : tipe data apapun
  x = 5;
  x = 'Dart is great';
  print(x);

  // Example 2
  /*
    var y = 5; // int
    y = 'Dart is great'; // kesalahan assignment karena assign pertama itu int.
    print(y);
  */

  // Example 3
  stdout.write('Nama Anda: ');
  String name = stdin.readLineSync()!; // Assignment String
  stdout.write('Usia Anda: ');
  int age = int.parse(stdin.readLineSync()!); // Assignment int

  print('Hallo $name, usia anda $age tahun.');
}