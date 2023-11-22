import 'package:todays_weather/model/weather_icon.dart';

class WeatherVariable {
  String prefecture; // 都道府県名
  String city; // 市町村名
  WeatherType weatherType; // 天気
  double maxTemp; // 最高気温
  double minTemp; // 最低気温
  double humidity; // 湿度
  int hukusoSisu; // 服装指数

  WeatherVariable({
    this.prefecture = '滋賀',
    this.city = '彦根',
    this.weatherType = WeatherType.NULL,
    this.maxTemp = 99,
    this.minTemp = -99,
    this.humidity = 0,
    this.hukusoSisu = 50,
  });
}
