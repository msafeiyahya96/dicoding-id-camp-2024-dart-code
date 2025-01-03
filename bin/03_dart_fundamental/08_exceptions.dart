/* 
  Sebuah aplikasi yang sudah berjalan mungkin mengalami eror dan crash. 
  Kondisi eror pada saat aplikasi berjalan (runtime) ini dikenal dengan exception. 
  Ketika exception terjadi aplikasi akan dihentikan dan program setelahnya juga tidak akan dieksekusi.
*/

void main() {
  /* 
    Untuk menangani exception, mari gunakan try dan catch. Pindahkan kode yang berpeluang menimbulkan exception ke dalam blok try.
    try {
      var a = 7;
      var b = 0;
      print(a ~/ b);
    }

    Kode di atas masih belum lengkap karena di dalam sebuah blok try ada kode yang diasumsikan berpeluang menjadi exception sehingga perlu ditangani. 
    Pada eror sebelumnya telah diketahui bahwa exception yang terjadi adalah IntegerDivisionByZeroException. 
    Sehingga kita bisa memanfaatkan keyword on untuk mengatasi ketika exception tersebut terjadi.
  */
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } on Exception {
    print('Can not divide by zero.');
  }

  /* 
    Blok kode on Exception di atas adalah pemanfaatan exception secara umum. Namun bagaimana dengan exception lainnya yang belum kita ketahui? 
    Pada Dart sendiri telah tersedia beberapa exception seperti IOException, FormatException, dsb. 
    Untuk menangani exception yang tidak diketahui secara spesifik, kita bisa menggunakan keyword catch setelah blok try.
  */
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch (e) {
    print('Exception happened: $e');
  }

  /* 
    Kode catch membutuhkan satu parameter yang merupakan objek exception. 
    Kita dapat mencetak exception tersebut ke layar untuk menampilkan exception apa yang terjadi. 
    Output kode di atas adalah:
    Exception happened: IntegerDivisionByZeroException
    atau
    Unsupported operation: Result of truncating division is Infinity: 7 ~/ 0

    Selain itu, kita juga dapat menambahkan satu parameter lagi di dalam catch yang merupakan objek stack trace. 
    Dari stack trace ini kita bisa melihat detail exception dan di baris mana exception tersebut terjadi.
  */
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch (e, s) {
    print('Exception happened: $e');
    print('Stack trace: $s');
  }
  // Blok catch dapat digabungkan dengan on. Catch akan menangkap apabila tidak ada exception yang memenuhi blok on yang terpasang.

  /* 
    Finally
    Selain try, on, dan catch, ada satu blok lagi yang ada dalam mekanisme exception handling, yaitu finally. 
    Blok finally akan tetap dijalankan tanpa peduli apa pun hasil yang terjadi pada blok try-catch.
  */
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch (e, s) {
    print('Exception happened: $e');
    print('Stack trace: $s');
  } finally {
    print('This line still executed');
  }
}