void main() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  print('=====');

  // Challenge
  dynamic stars;
  for (int i = 0; i < 10; i++) {
    stars = '';
    for (var j = 0; j <= i; j++) {
      stars += '* ';
    }
    print(stars);
  }
}
