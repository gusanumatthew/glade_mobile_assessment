import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_app_assessment/src/core/constants/colors.dart';
import 'package:weather_app_assessment/src/core/constants/dimensions.dart';
import 'package:weather_app_assessment/src/core/constants/images.dart';
import 'package:weather_app_assessment/src/core/constants/strings.dart';
import 'package:weather_app_assessment/src/features/forecasts/models/next_model.dart';
import 'package:weather_app_assessment/src/features/forecasts/models/today_model.dart';
import 'package:weather_app_assessment/src/features/forecasts/notifiers/forcasts_notifier.dart';
import 'package:weather_app_assessment/src/features/forecasts/widgets/next_focasts_tile.dart';
import 'package:weather_app_assessment/src/features/forecasts/widgets/today_forcasts_tile.dart';
import 'package:weather_app_assessment/src/services/navigation_services.dart';
import 'package:weather_app_assessment/src/widgets/spacing.dart';

class ForecastsView extends ConsumerStatefulWidget {
  const ForecastsView({Key? key}) : super(key: key);

  @override
  ConsumerState<ForecastsView> createState() => _ForecastsViewState();
}

class _ForecastsViewState extends ConsumerState<ForecastsView> {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final height = MediaQuery.of(context).size.height;
    final not = ref.read(forecastsProvider.notifier);
    return Scaffold(
      backgroundColor: AppColors.deep,
      body: Stack(children: [
        Positioned(
          top: height * 0.08,
          child: Image.asset(AppImages.leftd),
        ),
        Positioned(
          left: height * 0.15,
          child: Image.asset(AppImages.rightd),
        ),
        Padding(
          padding: const EdgeInsets.all(Dimensions.big),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Spacing.smallHeight(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      IconButton(
                          onPressed: () =>
                              ref.read(navigationService).navigateBack(),
                          icon: const Icon(Icons.arrow_back_ios_new)),
                      const Spacing.smallWidth(),
                      Text(
                        AppStrings.back,
                        style: textTheme.headline6,
                      ),
                    ]),
                    IconButton(
                        icon: const Icon(Icons.settings_outlined),
                        onPressed: () {})
                  ],
                ),
                const Spacing.largeHeight(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today',
                      style:
                          textTheme.headline2?.copyWith(color: AppColors.light),
                    ),
                    Text(
                      'Sep, 12',
                      style: textTheme.overline,
                    )
                  ],
                ),
                const Spacing.largeHeight(),
                SizedBox(
                  height: 135,
                  child: ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: todayForecasts.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () =>
                              not.forecastsPress(todayForecasts[index].id!),
                          child: TodayForcastsTile(
                            model: todayForecasts[index],
                          ),
                        );
                      }),
                ),
                const Spacing.largeHeight(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Next Forecast',
                      style:
                          textTheme.headline2?.copyWith(color: AppColors.light),
                    ),
                    SvgPicture.asset(
                      AppImages.calenderIcon,
                      color: AppColors.light,
                    )
                  ],
                ),
                const Spacing.mediumHeight(),
                SizedBox(
                  height: 400,
                  child:
                      // Scrollbar(
                      //   thickness: 10,
                      //   radius: const Radius.circular(20),
                      //   scrollbarOrientation: ScrollbarOrientation.right,
                      //   controller: controller,
                      //   thumbVisibility: true,
                      //   child:
                      ListView.builder(
                          padding: EdgeInsets.zero,
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: nextForecasts.length,
                          itemBuilder: (context, index) {
                            return NextTile(
                              model: nextForecasts[index],
                            );
                          }),
                ),
                // ),
                const Spacing.mediumHeight(),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SvgPicture.asset(
                    AppImages.sun,
                    color: AppColors.light,
                  ),
                  const Spacing.smallWidth(),
                  Text(
                    'AccuWeather',
                    style: textTheme.headline3,
                  )
                ])
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
