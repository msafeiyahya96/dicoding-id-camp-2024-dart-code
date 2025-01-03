/* 
  Integer atau bilangan bulat adalah bilangan yang tidak memiliki titik desimal. Contohnya seperti berikut:
  var number = 2020;
  var hex = 0xDEADBEEF;

  Jika sebuah bilangan adalah bilangan desimal, maka bilangan tersebut termasuk tipe data double. Double juga memiliki ukuran sebesar 64 bit. Berikut ini adalah contoh variabel double:
  var decimal = 1.2;
  var pi = 3.14;

  Sejak versi Dart 2.1, kita bisa menuliskan tipe data double tanpa menuliskan angka di belakang koma secara literal. Sebelum versi tersebut, kita harus menuliskan bilangan desimal secara literal.
  double withoutDecimal = 7; // Sama dengan double withoutDecimal = 7.0

  Jika Anda membutuhkan operasi perhitungan namun tidak tersedia pada tiga tipe data ini maka Anda bisa memanfaatkan library dart:math.
*/

// Mengonversi tipe data.
void main() {
  // String -> int
  var eleven = int.parse('11');
  print(eleven.runtimeType);

  // String -> double
  var elevenPointTwo = double.parse('11.2');
  print(elevenPointTwo.runtimeType);

  // int -> String
  var elevenAsString = 11.toString();
  print(elevenAsString.runtimeType);

  // double -> String
  var piAsString = 3.14159.toStringAsFixed(2); // String piAsString = '3.14'
  print(piAsString.runtimeType);
}