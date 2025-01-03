/* 
  Boolean pada Dart dideklarasikan dengan kata kunci bool. Sesuai dengan penjelasan di atas, 
  variabel boolean hanya bisa menyimpan dua nilai, yaitu true dan false.

  bool alwaysTrue = true;
  var alwaysFalse = false;
  var notTrue = !true;
  bool notFalse = !false;

  Tanda ! di atas disebut dengan operator “not” atau “bang”. Operator ini berfungsi untuk menegasikan nilai boolean, 
  sederhananya membalik nilai boolean. Misalnya !true sama saja bernilai false.
*/

void main() {
  if (true) {
    print("It's true");
  } else {
    print("It's False");
  }
}