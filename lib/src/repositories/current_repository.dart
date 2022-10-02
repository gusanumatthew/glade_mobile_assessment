import 'package:weather_app_assessment/src/features/home/models/current_model.dart';

abstract class CurrentRepository {
  Future<CurrentResponse> getCurrentWeather(String location);
}
