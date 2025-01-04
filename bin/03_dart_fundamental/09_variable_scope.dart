/* 
  Setelah Anda memisahkan kode Anda ke dalam blok atau fungsi yang terpisah, perlu Anda ketahui bahwa hal tersebut akan mempengaruhi bagaimana suatu variabel digunakan. 
  Setiap variabel memiliki scope atau lingkupnya masing-masing. Sebuah variabel dianggap satu lingkup selama masih berada di satu blok kurung kurawal yang sama. 
  Lingkup ini menentukan bagian kode mana yang dapat membaca dan menggunakan variabel tersebut.
  Perhatikan kode berikut ini:
  void main() {
    var isAvailableForDiscount = true;
    var price = 300000;
    num discount = 0;
    if (isAvailableForDiscount) {
      discount = 10 / 100 * price;
    }
    print('You need to pay: ${price - discount}');
  }

  Pada kode di atas variabel discount masih bisa diakses dari dalam kode if karena masih berada di dalam satu scope fungsi main(). 
  Bagaimana jika Anda ingin memisahkan kode di atas menjadi dua fungsi untuk menghitung diskonnya?
  void main() {
    var price = 300000;
    var discount = checkDiscount(price);
    print('You need to pay: ${price - discount}');
  }

  num checkDiscount(num price) {
    num discount = 0;      // pembuatan variabel baru dengan scope lebih kecil
    if (price >= 100000) {
      discount = 10 / 100 * price;
    }
    return discount;
  }

  Variabel discount dideklarasikan pada fungsi checkDiscount() sehingga memiliki scope pada fungsi tersebut saja. 
  Nilainya akan berbeda dengan variabel discount pada fungsi main(). Saat variabel dideklarasikan pada suatu fungsi tertentu, 
  ia hanya menjangkau di dalamnya saja karena cakupannya tidak bisa menjangkau ke fungsi lain. 

  Berbeda cerita ketika Anda mendeklarasikan variabel secara global, yaitu variabel yang dideklarasikan di luar blok kode apa pun. 
  Variabel ini bisa diakses di mana pun selama masih berada di berkas yang sama.
  var price = 300000;

  void main() {
    var discount = checkDiscount(price);  // variabel price dapat diakses di main()
    print('You need to pay: ${price - discount}');
  }

  num checkDiscount(num price) {
    num discount = 0;
    if (price >= 100000) {                // selain itu, ia dapat diakses juga di checkDiscount(),
      discount = 10 / 100 * price;        // bahkan, di level pengondisian if.       
    }

    return discount;
  }

  Bahkan, variabel price dapat memiliki cakupan yang lebih dalam sehingga memungkinkan diakses hingga ke level control flow atau pengondisian if. 
  Namun, perlu Anda perhatikan bahwa variabel hanya dapat dipanggil pada cakupan yang ia miliki. Ia tidak dapat diakses jika diluar kemampuannya. 

  Program di bawah ini adalah salah satu contoh kesalahan dalam memanggil variabel. 
  Ia memanggil variabel discountApplied, tetapi proses deklarasinya terjadi pada perintah berikutnya. 
  Hal ini harus dihindari karena pemanggilan variabel dapat dilakukan setelah proses deklarasi terjadi.
  var price = 300000;

  void main() {
    var discount = checkDiscount(price);
    print('You need to pay: ${price - discount}');
  }

  num checkDiscount(num price) {
    num discount = 0;
    if (!discountApplied) {            // pemanggilan variabel yang salah sehingga terjadi error
      if (price >= 100000) {
        discount = 10 / 100 * price;
        var discountApplied = true;    // proses deklarasi seharusnya terjadi sebelum pemanggilan variabel
      }
    }

    return discount;
  }
*/

var price = 300000;

void main() {
  var discount = checkDiscount(price); // variabel price dapat diakses di main()
  print('You need to pay: ${price - discount}');
}

num checkDiscount(num price) {
  num discount = 0;
  if (price >= 100000) {
    // selain itu, ia dapat diakses juga di checkDiscount(),
    discount = 10 / 100 * price; // bahkan, di level pengondisian if.
  }

  return discount;
}
