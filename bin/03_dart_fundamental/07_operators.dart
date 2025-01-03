/*
  Pada Dart operator menginstruksikan komputer untuk melakukan operasi.
*/

void main() {
  /* 
    Operator Aritmatika
    | Operator | Deskripsi
    | +        | Penjumlahan
    | -        | Pengurangan
    | *        | Perkalian
    | /        | Pembagian
    | ~/       | Pembagian, mengembalikan nilai int
    | %        | Modulo atau sisa hasil bagi
  */
  print(5 + 2); // int add = 7
  print(5 - 2); // int subtract = 3
  print(5 * 2); // int multiply = 10
  print(5 / 2); // double divide = 2.5
  print(5 ~/ 2); // int intDivide = 2
  print(5 % 2); // int modulo = 1

  // Jika Anda ingin melakukan operasi penjumlahan terlebih dahulu, gunakan tanda kurung atau parentheses.
  print((1 + 3) * (4 - 2)); // output: 8

  // Selain itu Dart mendukung increment dan decrement. Contohnya adalah seperti berikut:
  var a = 0, b = 5;
  a++;
  b--;
  print(a); // output = 1
  print(b); // output = 4

  // Expression a++ di atas dapat diartikan dengan a = a + 1. Komputer akan mengambil nilai dari a kemudian menambahkan 1 lalu memasukkannya kembali ke variabel a. Bentuk increment lainnya adalah seperti berikut:
  var c = 0;
  c += 5;    // c = c + 5 atau c = 0 + 5
  print(c);  // output 5

  /* 
    Operator Perbandingan
    Dart juga mendukung operasi perbandingan untuk membandingkan nilai-nilai yang dijadikan sebagai operands.
    | Operator | Deskripsi
    | ==       | Sama Dengan
    | !=       | Tidak Sama Dengan
    | >        | Lebih Dari
    | <        | Kurang Dari
    | >=       | Lebih Dari Sama Dengan
    | <=       | Kurang Dari Sama Dengan

    Operator perbandingan ini akan mengembalikan nilai dalam bentuk boolean.
  */
  if (2 <= 3) {
    print('Ya, 2 kurang dari sama dengan 3');
  } else {
    print("Anda salah");
  }

  /* 
    Operator Logika
    Kita juga dapat menggabungkan ekspresi boolean atau membaliknya dengan operator logika. Operator ini meliputi:
    | Operator | Deskripsi
    | ||       | OR
    | &&       | AND
    | !        | NOT

    Kita telah membahas operator NOT atau bang pada materi boolean. Sementara itu operator OR atau AND digunakan untuk menguji logika dari beberapa nilai boolean. 
    Operator AND akan menghasilkan nilai true jika semua operand-nya bernilai true, 
    sedangkan OR jika salah satu saja dari operand bernilai true maka operator akan mengembalikan nilai true. Contohnya seperti kode berikut.
  */
  if (2 < 3 && 2 + 4 == 5) {
    print('Untuk mencetak ini semua kondisi harus benar');
  } else {
    print(
        '2 kurang dari 3, tapi 2 + 4 tidak sama dengan 5, maka ini akan tampil');
  }

  if (false || true || false) {
    print('Ada satu nilai true');
  } else {
    print('Jika semuanya false, maka ini akan tampil');
  }
}