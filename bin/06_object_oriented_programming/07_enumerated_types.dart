void main() {
  print(Rainbow.values);
  print(Rainbow.blue);
  print(Rainbow.orange.index);

  print('=====');

  print(Rainbow.blue.name);

  print('=====');

  var weatherForecast = Weather.cloudy;

  switch (weatherForecast) {
    case Weather.sunny:
      print("Today's weather forecast is sunny");
      break;
    case Weather.cloudy:
      print("Today's weather forecast is cloudy");
      break;
    case Weather.rain:
      print("Today's weather forecast is rain");
      break;
    case Weather.storm:
      print("Today's weather forecast is storm");
      break;
  }

  print('=====');

  print(Weather.rain.rainAmount);

  print('=====');

  print(weatherForecast);
}

enum Rainbow { red, orange, yellow, green, blue, indigo, violet }

// enum Weather { sunny, cloudy, rain, storm }

enum Weather {
  sunny(15),
  cloudy(34),
  rain(69),
  storm(83);

  final int rainAmount;

  const Weather(this.rainAmount);

  @override
  String toString() =>
      "Today's weather forecast is $name with a $rainAmount% chance of rain";
}
