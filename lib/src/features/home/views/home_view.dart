import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_app_assessment/src/core/constants/colors.dart';
import 'package:weather_app_assessment/src/core/constants/dimensions.dart';
import 'package:weather_app_assessment/src/core/constants/images.dart';
import 'package:weather_app_assessment/src/core/routes.dart';
import 'package:weather_app_assessment/src/features/notification/view/notification_view.dart';
import 'package:weather_app_assessment/src/services/navigation_services.dart';
import 'package:weather_app_assessment/src/widgets/app_buttons.dart';
import 'package:weather_app_assessment/src/widgets/spacing.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: AppColors.deep,
        body: SafeArea(
          child: Stack(children: [
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
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                const Spacing.smallHeight(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: AppColors.light,
                        ),
                        const Spacing.smallWidth(),
                        Text(
                          'Semerang',
                          style: textTheme.headline4,
                        ),
                        const Spacing.smallWidth(),
                        const Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: AppColors.light,
                        )
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        WeatherNotification.checkNotification(context: context);
                      },
                      child: Image.asset(AppImages.notification),
                    )
                  ],
                ),
                const Spacing.height(45),
                Image.asset(AppImages.cloudy),
                const Spacing.height(65),
                SizedBox(
                  height: height * 0.35,
                  width: 500,
                  child: Card(
                    color: AppColors.lightBlue,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(Dimensions.medium),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Today, 12 September',
                              style: textTheme.headline3,
                            ),
                            const Spacing.smallHeight(),
                            Text(
                              '29°',
                              style: textTheme.headline1,
                            ),
                            const Spacing.smallHeight(),
                            Text(
                              'Cloudy',
                              style: textTheme.headline4,
                            ),
                            const Spacing.smallHeight(),
                            SizedBox(
                              height: 20,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        AppImages.wind,
                                        color: AppColors.light,
                                      ),
                                      const Spacing.smallWidth(),
                                      Text('Wind', style: textTheme.headline3),
                                    ],
                                  ),
                                  const VerticalDivider(
                                    thickness: 2,
                                    color: AppColors.light,
                                    width: 3,
                                  ),
                                  Text(
                                    '15 km/h',
                                    style: textTheme.headline3,
                                  ),
                                ],
                              ),
                            ),
                            const Spacing.mediumHeight(),
                            SizedBox(
                              height: 20,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        AppImages.hum,
                                      ),
                                      const Spacing.smallWidth(),
                                      Text('Hum', style: textTheme.headline3),
                                    ],
                                  ),
                                  const VerticalDivider(
                                    thickness: 2,
                                    color: AppColors.light,
                                    width: 3,
                                  ),
                                  Text(
                                    '26 %',
                                    style: textTheme.headline3,
                                  ),
                                ],
                              ),
                            )
                          ]),
                    ),
                  ),
                ),
                const Spacer(),
                AppButton(
                  onPressed: () => ref
                      .read(navigationService)
                      .navigateToNamed(Routes.forecast),
                  label: 'Forecast report',
                )
              ]),
            ),
          ]),
        ));
  }
}
