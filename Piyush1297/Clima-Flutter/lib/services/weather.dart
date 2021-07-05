import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
const apikey="dabc406d3e7aa83e194a8fdf9fc9f01e";
const openWeatherMapURL="https://api.openweathermap.org/data/2.5/weather";
class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    var url='$openWeatherMapURL?q=$cityName&appid=$apikey&units=metric';
    NetworkHelper networkHelper=NetworkHelper(url);
    var weatherData= await networkHelper.getData();
    return weatherData;
}
  Future<dynamic> getLocationWeather() async{

    Location location=Location();
    await location.getCurrentLocation();
    NetworkHelper networkHelper=NetworkHelper("$openWeatherMapURL?lat=${location.lattitude}&lon=${location.longitude}&appid=$apikey&units=metric");
    var weatherData=await networkHelper.getData();
    return weatherData;
  }
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 30) {
      return 'On the hotter side';
    } else if (temp > 20) {
      return 'Perfect Weather !';
    } else if (temp > 10) {
      return 'A little Chilly';
    } else {
      return 'Cold oof !';
    }
  }
}
