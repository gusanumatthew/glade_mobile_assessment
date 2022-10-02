import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_app_assessment/src/features/home/models/current_model.dart';
part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/current')
  Future<CurrentResponse> getCurrent(@Queries() Map<String, String> params);
}
