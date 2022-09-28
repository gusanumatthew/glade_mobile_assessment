import 'package:flutter/material.dart';
import 'package:weather_app_assessment/src/core/constants/colors.dart';
import 'package:weather_app_assessment/src/core/constants/dimensions.dart';
import 'package:weather_app_assessment/src/core/constants/strings.dart';
import 'package:weather_app_assessment/src/features/notification/widgets/show_notification.dart';

class WeatherNotification {
  static checkNotification({
    required BuildContext context,
  }) async {
    return showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.light,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      isScrollControlled: true,
      builder: (context) => const Show(),
    );
  }
}

class Show extends StatelessWidget {
  const Show({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Wrap(children: [
      Padding(
        padding: const EdgeInsets.all(Dimensions.medium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.notification,
              style: textTheme.headline2,
            ),
            const ShowNotification(),
          ],
        ),
      ),
    ]);
  }
}
