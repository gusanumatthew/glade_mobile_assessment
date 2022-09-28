import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_app_assessment/src/features/forecasts/notifiers/forecasts_state.dart';

class ForecastsNotifier extends StateNotifier<ForecastsState> {
  ForecastsNotifier() : super(ForecastsState.initial());

  void forecastsPress(int id) {
    List<int> foreSelected = state.foreSelected;
    foreSelected.clear();

    if (foreSelected.contains(id)) {
      foreSelected.removeWhere((value) => value == id);
    } else {
      foreSelected.add(id);
    }
    state = state.copyWith(foreSelected: state.foreSelected);
  }
}

final forecastsProvider =
    StateNotifierProvider<ForecastsNotifier, ForecastsState>((ref) {
  return ForecastsNotifier();
});
