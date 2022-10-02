import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_app_assessment/src/features/home/models/current_model.dart';
import 'package:weather_app_assessment/src/repositories/current_repository.dart';
import 'package:weather_app_assessment/src/services/failure.dart';
import 'package:weather_app_assessment/src/services/network/api_keys.dart';
import 'package:weather_app_assessment/src/services/network/dio.dart';
import 'package:weather_app_assessment/src/services/network/rest_client.dart';

class CurrentRepositoryImpl implements CurrentRepository {
  final RestClient _client;

  CurrentRepositoryImpl(this._client);

  @override
  Future<CurrentResponse> getCurrentWeather(String location) async {
    try {
      return await _client
          .getCurrent({"access_key": ApiKeys.accesskey, "query": location});
    } on DioError catch (e) {
      throw Failure(e.message);
    }
  }
}

final currentRepository = Provider<CurrentRepository>(
    (_) => CurrentRepositoryImpl(_.read(restClient)));
