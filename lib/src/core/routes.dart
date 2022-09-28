import 'package:flutter/material.dart';
import 'package:weather_app_assessment/src/features/forecasts/views/forecasts_view.dart';

class Routes {
  static const forecast = '/onboardingView';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case forecast:
        return MaterialPageRoute(builder: (_) => const ForecastsView());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
