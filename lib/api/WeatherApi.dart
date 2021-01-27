import 'package:weather_app_medium/models/forecast.dart';
import 'package:weather_app_medium/models/location.dart';

abstract class WeatherApi {
  Future<Forecast> getWeather(Location location);
  Future<Location> getLocation(String city);
}