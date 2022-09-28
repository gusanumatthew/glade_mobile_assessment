import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app_assessment/src/core/constants/colors.dart';
import 'package:weather_app_assessment/src/core/constants/dimensions.dart';
import 'package:weather_app_assessment/src/features/notification/model/notification_model.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    Key? key,
    required this.model,
  }) : super(key: key);

  final NotificationModel model;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: Dimensions.small),
      horizontalTitleGap: 5,
      leading: SvgPicture.asset(
        model.image,
        color: AppColors.dark,
      ),
      title: Text(
        model.time,
        style: textTheme.subtitle1,
      ),
      subtitle: Text(
        model.title,
        style: textTheme.subtitle2,
      ),
      trailing: const Icon(Icons.keyboard_arrow_down_outlined),
    );
  }
}
