void main() {
  var i = 1;
  while (i < 10) {
    print(i);
    i++;
  }

  print('=====');

  var j = 1;
  do {
    print(j);
    j++;
  } while (j <= 10);

  print('=====');

  // Challenge
  var k = 10;
  while (k >= 1) {
    dynamic stars = '';

    var l = 0;
    while (l < k) {
      stars += '* ';
      l++;
    }

    print(stars);
    k--;
  }

  print('=====');

  var m = 10;
  do {
    dynamic stars1 = '';

    var n = 0;
    do {
      stars1 += '* ';
      n++;
    } while (n < m);
    print(stars1);
    m--;
  } while (m >= 1); // This will print 10 lines of stars, but the last line
}
