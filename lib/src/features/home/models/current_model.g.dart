// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentResponse _$CurrentResponseFromJson(Map<String, dynamic> json) =>
    CurrentResponse(
      request: json['request'] == null
          ? null
          : Request.fromJson(json['request'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      current: json['current'] == null
          ? null
          : Current.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrentResponseToJson(CurrentResponse instance) =>
    <String, dynamic>{
      'request': instance.request,
      'location': instance.location,
      'current': instance.current,
    };

Current _$CurrentFromJson(Map<String, dynamic> json) => Current(
      observationTime: json['observation_time'] as String?,
      temperature: json['temperature'] as int?,
      weatherCode: json['weather_code'] as int?,
      weatherIcons: (json['weather_icons'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      weatherDescriptions: (json['weather_descriptions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      windSpeed: json['wind_speed'] as int?,
      windDegree: json['wind_degree'] as int?,
      windDir: json['wind_dir'] as String?,
      pressure: json['pressure'] as int?,
      precip: json['precip'] as int?,
      humidity: json['humidity'] as int?,
      cloudcover: json['cloudcover'] as int?,
      feelslike: json['feelslike'] as int?,
      uvIndex: json['uv_index'] as int?,
      visibility: json['visibility'] as int?,
    );

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'observation_time': instance.observationTime,
      'temperature': instance.temperature,
      'weather_code': instance.weatherCode,
      'weather_icons': instance.weatherIcons,
      'weather_descriptions': instance.weatherDescriptions,
      'wind_speed': instance.windSpeed,
      'wind_degree': instance.windDegree,
      'wind_dir': instance.windDir,
      'pressure': instance.pressure,
      'precip': instance.precip,
      'humidity': instance.humidity,
      'cloudcover': instance.cloudcover,
      'feelslike': instance.feelslike,
      'uv_index': instance.uvIndex,
      'visibility': instance.visibility,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      name: json['name'] as String?,
      country: json['country'] as String?,
      region: json['region'] as String?,
      lat: json['lat'] as String?,
      lon: json['lon'] as String?,
      timezoneId: json['timezone_id'] as String?,
      localtime: json['localtime'] as String?,
      localtimeEpoch: json['localtime_epoch'] as int?,
      utcOffset: json['utc_offset'] as String?,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'region': instance.region,
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone_id': instance.timezoneId,
      'localtime': instance.localtime,
      'localtime_epoch': instance.localtimeEpoch,
      'utc_offset': instance.utcOffset,
    };

Request _$RequestFromJson(Map<String, dynamic> json) => Request(
      type: json['type'] as String?,
      query: json['query'] as String?,
      language: json['language'] as String?,
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$RequestToJson(Request instance) => <String, dynamic>{
      'type': instance.type,
      'query': instance.query,
      'language': instance.language,
      'unit': instance.unit,
    };
