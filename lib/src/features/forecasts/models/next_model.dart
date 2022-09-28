import 'package:weather_app_assessment/src/core/constants/images.dart';

class NextModel {
  int? id;
  String? day;
  String? degree;
  String? symbols;

  NextModel({this.id, this.day, this.degree, this.symbols});
}

final nextForecasts = [
  NextModel(
    id: 1,
    day: 'Sep, 13',
    degree: '29°C',
    symbols: AppImages.smallCloud,
  ),
  NextModel(
    id: 2,
    day: 'Sep, 14',
    degree: '26°C',
    symbols: AppImages.smallCloud,
  ),
  NextModel(
    id: 3,
    day: 'Sep, 15',
    degree: '34°',
    symbols: AppImages.smallSun,
  ),
  NextModel(
    id: 4,
    day: 'Sep, 16',
    degree: '21°',
    symbols: AppImages.smallThud,
  ),
  NextModel(
    id: 5,
    day: 'Sep, 17',
    degree: '23°',
    symbols: AppImages.smallMoon,
  ),
  NextModel(
    id: 6,
    day: 'Sep, 18',
    degree: '23°',
    symbols: AppImages.smallMoon,
  ),
  NextModel(
    id: 7,
    day: 'Sep, 19',
    degree: '23°',
    symbols: AppImages.smallMoon,
  ),
  NextModel(
    id: 8,
    day: 'Sep, 20',
    degree: '23°',
    symbols: AppImages.smallMoon,
  ),
];
