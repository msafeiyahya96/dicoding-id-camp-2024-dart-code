// Single Line Comments
/* 
  Multi
  Line
  Comments
*/

// ignore: dangling_library_doc_comments
/// Fungsi [main] akan menghasilkan 2 output.
/// Output pertama menampilkan teks dan output kedua menampilkan hasil perkalian pada fungsi [calculate]

void main(List<String> arguments) {
  // Mencetak Hello Dart! Dart is great. pada konsol
  print('Hello Dart! Dart is great');
  // Testing documentation comment with [].
  print('6 * 7 = ${calculate()}');
}

int calculate() {
  // Mencetak hasil perkalian 6 dan 7
  return 6 * 7;
}