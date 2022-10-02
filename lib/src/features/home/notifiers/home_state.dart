import 'package:weather_app_assessment/src/core/utilities/enums.dart';
import 'package:weather_app_assessment/src/features/home/models/current_model.dart';

class HomeState {
  final LoadState homeState;
  final CurrentResponse? current;

  HomeState({required this.homeState, this.current});

  factory HomeState.initial() {
    return HomeState(
      homeState: LoadState.idle,
      current: null,
    );
  }
  HomeState copyWith({
    LoadState? homeState,
    CurrentResponse? current,
  }) {
    return HomeState(
      homeState: homeState ?? this.homeState,
      current: current ?? this.current,
    );
  }
}
