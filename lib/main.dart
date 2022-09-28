import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_app_assessment/src/core/constants/strings.dart';
import 'package:weather_app_assessment/src/core/routes.dart';
import 'package:weather_app_assessment/src/core/themes.dart';
import 'package:weather_app_assessment/src/features/home/views/home_view.dart';
import 'package:weather_app_assessment/src/services/navigation_services.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: AppTheme.lightTheme,
      home: const HomeView(),
      onGenerateRoute: Routes.generateRoute,
      navigatorKey: ref.read(navigationService).navigatorKey,
      //scaffoldMessengerKey: ref.read(snackbarService).scaffoldMessengerKey,
    );
  }
}
