import 'dart:async';
import 'package:dio/dio.dart';
import 'package:learn/core/utils/constatns.dart';

class ApiProvider {
  Dio dio = Dio();

  // current weather api call
  Future<dynamic> callCurrentWeather(cityName) async {
    var response = await dio.get(Constants.apiUrl, queryParameters: {
      'q': cityName,
      'units': 'metric',
      'appid': Constants.apiKeys1
    });
    double temp = response.data['main']['temp'];
    return temp;
  }
}
