import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_app_assessment/src/core/utilities/enums.dart';
import 'package:weather_app_assessment/src/features/home/models/current_repository_impl.dart';
import 'package:weather_app_assessment/src/features/home/notifiers/home_state.dart';
import 'package:weather_app_assessment/src/repositories/current_repository.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(this.currentRepository) : super(HomeState.initial());
  final CurrentRepository currentRepository;
  Future<void> getCurrentWeather(String location) async {
    state = state.copyWith(homeState: LoadState.loading);
    try {
      final res = await currentRepository.getCurrentWeather(location);
      state = state.copyWith(
        //current: res.current,
        homeState: LoadState.success,
      );
    } catch (e) {}
  }
}

final homeProvider = StateNotifierProvider<HomeNotifier, HomeState>((_) {
  return HomeNotifier(
    _.read(currentRepository),
  );
});
