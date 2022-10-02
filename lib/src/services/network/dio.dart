import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_app_assessment/src/services/network/rest_client.dart';

final dio = Provider<Dio>(
  (ref) {
    final dio = Dio();
    dio.options.baseUrl = 'https://api.weatherstack.com';

    return dio;
  },
);
final restClient = Provider<RestClient>((ref) => RestClient(ref.read(dio)));
