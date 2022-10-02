import 'package:json_annotation/json_annotation.dart';
part 'current_model.g.dart';

@JsonSerializable()
class CurrentResponse {
  CurrentResponse({
    this.request,
    this.location,
    this.current,
  });

  Request? request;
  Location? location;
  Current? current;

  factory CurrentResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrentResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentResponseToJson(this);
}

@JsonSerializable()
class Current {
  Current({
    this.observationTime,
    this.temperature,
    this.weatherCode,
    this.weatherIcons,
    this.weatherDescriptions,
    this.windSpeed,
    this.windDegree,
    this.windDir,
    this.pressure,
    this.precip,
    this.humidity,
    this.cloudcover,
    this.feelslike,
    this.uvIndex,
    this.visibility,
  });
  @JsonKey(name: 'observation_time')
  String? observationTime;
  int? temperature;
  @JsonKey(name: 'weather_code')
  int? weatherCode;
  @JsonKey(name: 'weather_icons')
  List<String>? weatherIcons;
  @JsonKey(name: 'weather_descriptions')
  List<String>? weatherDescriptions;
  @JsonKey(name: 'wind_speed')
  int? windSpeed;
  @JsonKey(name: 'wind_degree')
  int? windDegree;
  @JsonKey(name: 'wind_dir')
  String? windDir;
  int? pressure;
  int? precip;
  int? humidity;
  int? cloudcover;
  int? feelslike;
  @JsonKey(name: 'uv_index')
  int? uvIndex;
  int? visibility;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}

@JsonSerializable()
class Location {
  Location({
    this.name,
    this.country,
    this.region,
    this.lat,
    this.lon,
    this.timezoneId,
    this.localtime,
    this.localtimeEpoch,
    this.utcOffset,
  });

  String? name;
  String? country;
  String? region;
  String? lat;
  String? lon;
  @JsonKey(name: 'timezone_id')
  String? timezoneId;
  String? localtime;
  @JsonKey(name: 'localtime_epoch')
  int? localtimeEpoch;
  @JsonKey(name: 'utc_offset')
  String? utcOffset;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable()
class Request {
  Request({
    this.type,
    this.query,
    this.language,
    this.unit,
  });

  String? type;
  String? query;
  String? language;
  String? unit;

  factory Request.fromJson(Map<String, dynamic> json) =>
      _$RequestFromJson(json);
  Map<String, dynamic> toJson() => _$RequestToJson(this);
}
