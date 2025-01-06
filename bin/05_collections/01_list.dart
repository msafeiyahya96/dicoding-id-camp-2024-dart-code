void main() {
  List dynamicList = [1, 'Dicoding', true];
  print(dynamicList.runtimeType);

  /// Output:
  /// List<dynamic>

  print('=====');

  print(dynamicList[1]);
  // Output: Docoding

  print('=====');

  List<String> stringList = ["Hello", "Dicoding", "Dart"];
  for (int i = 0; i < stringList.length; i++) {
    print(stringList[i]);
  }

  // Output:
  // Hello
  // Dicoding
  // Dart

  print('=====');

  stringList.forEach((s) => print(s));

  print('=====');

  // Menambahkan data di akhir list.
  stringList.add('Flutter');
  print(stringList);

  print('=====');

  // Menambahkan data di indeks ke-0.
  stringList.insert(0, 'Programming');
  print(stringList);

  print('=====');

  // Mengubah value di dalam list.
  stringList[1] = 'Application';
  print(stringList);

  print('=====');

  // Menghapus list dengan nilai Programming
  stringList.remove('Programming');

  // Menghapus list pada index ke-1
  // stringList.removeAt(1);

  // Menghapus data list terakhir
  // stringList.removeLast();

  // Menghapus list mulai index ke-0 sampai ke-1 (indeks 2 masih dipertahankan)
  // stringList.removeRange(0,2);

  print(stringList);

  print('=====');

  /// Spread Operator
  var favorites = ['Seafood', 'Salad', 'Nugget', 'Soup'];
  var others = ['Cake', 'Pie', 'Donut'];

  // without spread operator
  var allFavorites = [favorites, others];
  print(allFavorites);

  // with spread operator to combine different list.
  var allFavoritesSpreadOperator = [...favorites, ...others];
  print(allFavoritesSpreadOperator);

  /// Output: [[Seafood, Salad, Nugget, Soup], [Cake, Pie, Donut]]
  
  List<dynamic>? list;
  List<dynamic>? list2 = [0, ...?list];
  print(list2);
  /// Output: [0]
}
