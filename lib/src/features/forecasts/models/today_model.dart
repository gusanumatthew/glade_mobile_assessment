import 'package:weather_app_assessment/src/core/constants/images.dart';

class TodayModel {
  int? id;
  String? time;
  String? degree;
  String? symbols;

  TodayModel({this.id, this.time, this.degree, this.symbols});
}

final todayForecasts = [
  TodayModel(
    id: 1,
    time: '15.00',
    degree: '29°C',
    symbols: AppImages.smallCloud,
  ),
  TodayModel(
    id: 2,
    time: '16.00',
    degree: '26°C',
    symbols: AppImages.smallCloud,
  ),
  TodayModel(
    id: 3,
    time: '17.00',
    degree: '34°',
    symbols: AppImages.smallSun,
  ),
  TodayModel(
    id: 4,
    time: '18.00',
    degree: '21°',
    symbols: AppImages.smallThud,
  ),
  TodayModel(
    id: 5,
    time: '19.00',
    degree: '23°',
    symbols: AppImages.smallMoon,
  ),
];
