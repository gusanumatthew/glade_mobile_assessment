import 'package:weather_app_assessment/src/core/constants/images.dart';

class NotificationModel {
  final String image;
  final String title;
  final String time;

  NotificationModel(
      {required this.image, required this.title, required this.time});
}

final notifications = [
  NotificationModel(
      image: AppImages.sun,
      title:
          'A sunny day in your location, consider wearing your UV protection',
      time: '10 minutes ago'),
  NotificationModel(
      image: AppImages.wind,
      title:
          'A cloudy day will occur all day long, don\'t worry about the heat of the sun',
      time: '1 day ago'),
  NotificationModel(
      image: AppImages.cloud,
      title:
          'Potential for rain today is 84%, don\'t forget to bring your umbrella.',
      time: '2 days ago'),
];
