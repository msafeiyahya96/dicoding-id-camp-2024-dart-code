void main() {
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };

  print(capital['Jakarta']);

  /// Output: Indonesia

  print('=====');

  // access keys
  var mapKeys = capital.keys;
  print("mapKeys: $mapKeys");

  // access values
  var mapValues = capital.values;
  print("mapValues: $mapValues");

  /// Output:
  /// mapKeys = (Jakarta, London, Tokyo)
  /// mapValues = (Indonesia, England, Japan)

  print('=====');

  // add new key and value in the map.
  capital['New Delhi'] = 'India';

  print(capital);
  /// Output: {Jakarta: Indonesia, London: England, Tokyo: Japan, New Delhi: India}
}
