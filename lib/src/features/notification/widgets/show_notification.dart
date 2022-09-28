import 'package:flutter/material.dart';
import 'package:weather_app_assessment/src/features/notification/model/notification_model.dart';
import 'package:weather_app_assessment/src/features/notification/widgets/notification_tile.dart';

class ShowNotification extends StatelessWidget {
  const ShowNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: notifications.length,
          itemBuilder: (context, index) =>
              NotificationTile(model: notifications[index])),
    );
  }
}
