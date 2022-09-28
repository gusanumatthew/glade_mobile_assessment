import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_app_assessment/src/core/constants/colors.dart';
import 'package:weather_app_assessment/src/core/constants/dimensions.dart';
import 'package:weather_app_assessment/src/features/forecasts/models/today_model.dart';
import 'package:weather_app_assessment/src/features/forecasts/notifiers/forcasts_notifier.dart';

class TodayForcastsTile extends ConsumerWidget {
  final TodayModel model;
  const TodayForcastsTile({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    final tops = ref.watch(forecastsProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.tiny),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: Dimensions.small),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: tops.foreSelected.contains(model.id)
                ? AppColors.lightBlue
                : AppColors.deep),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '${model.degree}',
                style: textTheme.headline3,
              ),
              Image.asset(
                model.symbols!,
                width: 80,
              ),
              Text(
                '${model.time}',
                style: textTheme.headline3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
