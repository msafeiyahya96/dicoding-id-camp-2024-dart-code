/* 
  Functions pada Dart digunakan untuk menghasilkan output berdasarkan input tertentu yang diberikan, selain itu juga sebagai blok kode atau prosedur yang dapat digunakan kembali.
  Untuk mendeklarasikan fungsi, caranya sama dengan penulisan fungsi main() yaitu dengan menentukan tipe nilai balik atau return value lalu nama fungsi dan parameter inputnya.
  returnType functionName(type param1, type param2, ...) {
    return result;
  }

  Setiap fungsi Dart selalu mengembalikan nilai. Namun ada satu tipe data khusus yang bisa kita lihat pada fungsi main yaitu return type void. 
  Keyword void berarti fungsi tersebut tidak menghasilkan output atau nilai kembali. 
  Biasanya fungsi seperti ini digunakan untuk kumpulan instruksi atau prosedur yang berulang dan sering digunakan.
  Setelah fungsi dibuat, selanjutnya kita bisa memanggilnya pada fungsi main() atau pada bagian program lain yang Anda inginkan.
  void main() {
    greet();
  }

  void greet() {
    print('Hello!');
  }
  
  =====
  Function parameters
  Pada beberapa kasus fungsi bisa memerlukan input data untuk diproses. Input data ini kita kenal sebagai parameter. 
  Untuk menambahkan parameter ke dalam fungsi, kita bisa memasukkannya ke dalam tanda kurung. Sebuah fungsi bisa menerima nol, satu, atau beberapa parameter.
  void main() {
    greet('Sayangoding', 2024);
  }

  void greet(String name, int bornYear) {
    var age = 2025 - bornYear;
    print('Hello $name! Tahun ini anda berusia $age tahun');
  }

  Sebuah fungsi juga bisa menghasilkan output atau mengembalikan nilai. Fungsi yang mengembalikan nilai ditandai dengan definisi return type selain void dan memiliki keyword return. 
  Contohnya seperti berikut.
  void main() {
    var firstNumber = 7;
    var secondNumber = 10;
    print('Rata-rata dari $firstNumber & $secondNumber adalah ${average(firstNumber, secondNumber)}');
  }

  double average(num num1, num num2) {
    return (num1 + num2) / 2;
  }

  Jika fungsi hanya memiliki satu baris kode atau instruksi di dalamnya, maka bisa disingkat dengan anotasi =>. Ini juga dikenal dengan nama arrow syntax.
  double average(num num1, num num2) => (num1 + num2) / 2;
  void greeting() => print('Hello');

  =====
  Optional Parameters
  Dart mendukung optional parameter, di mana kita tidak wajib mengisi parameter yang diminta oleh fungsi. 
  Untuk bisa membuat parameter menjadi opsional, kita perlu memasukkannya ke dalam kurung siku seperti contoh berikut:
  void greetNewUser([String name = "dico", int age = 10, bool isVerified = true]){}

  Cara ini disebut dengan positional optional parameters. Dengan optional parameter seperti di atas kita bisa memanggil fungsi seperti berikut:
  greetNewUser('Widy', 20, true);
  greetNewUser('Widy', 20);
  greetNewUser('Widy');
  greetNewUser();

  Setiap parameter yang tidak dimasukkan akan memiliki nilai null. Namun sejak versi 2.12, 
  Dart memiliki fitur null safety di mana suatu variabel secara default tidak bisa memiliki nilai null. 
  Solusinya, kita bisa menambahkan tanda tanya (?) setelah tipe data supaya bisa menyimpan nilai null atau memberikan nilai parameter default. 
  Nilai ini akan digunakan jika kita tidak memasukkan parameternya.
  void greetNewUser([String? name, int? age, bool isVerified = false]) {}

  Dengan cara ini, urutan parameter masih perlu diperhatikan sehingga jika kita hanya ingin mengisi parameter terakhir, kita perlu mengisi parameter sebelumnya dengan null.
  greetNewUser(null, null, true);

  Untuk mengatasi masalah di atas kita bisa memanfaatkan named optional parameters. Pada opsi ini kita menggunakan kurung kurawal pada parameter.
  void greetNewUser({String? name, int? age, bool? isVerified})

  Dengan cara ini Anda bisa memasukkan parameter tanpa mempedulikan urutan parameter dengan menyebutkan nama parameternya.
  greetNewUser(name: 'Widy', age: 20, isVerified: true);
  greetNewUser(name: 'Widy', age: 20);
  greetNewUser(age: 20);
  greetNewUser(isVerified: true);

  Perhatikan bahwa parameter ini bersifat opsional dan secara default akan bernilai null. Untuk memenuhi null safety, Anda bisa menggunakan cara seperti sebelumnya, 
  atau menandai parameter wajib diisi dengan keyword required.
  void greetNewUser({required String name, required int age, bool isVerified = false}) {}
*/

void main() {
  greet('Sayangoding', 2024);

  var firstNumber = 7;
  var secondNumber = 10;
  print(
      'Rata-rata dari $firstNumber & $secondNumber adalah ${average(firstNumber, secondNumber)}');
}

void greet(String name, int bornYear) {
  var age = 2025 - bornYear;
  print('Hello $name! Tahun ini anda berusia $age tahun');
}

double average(num num1, num num2) {
  return (num1 + num2) / 2;
}
