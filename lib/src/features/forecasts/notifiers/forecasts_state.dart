import 'package:weather_app_assessment/src/core/utilities/enums.dart';

class ForecastsState {
  final LoadState loadState;
  List<int> foreSelected;

  ForecastsState({required this.loadState, required this.foreSelected});

  factory ForecastsState.initial() {
    return ForecastsState(
      loadState: LoadState.idle,
      foreSelected: [],
    );
  }
  ForecastsState copyWith({
    LoadState? loadState,
    List<int>? foreSelected,
  }) {
    return ForecastsState(
      loadState: loadState ?? this.loadState,
      foreSelected: foreSelected ?? this.foreSelected,
    );
  }
}
