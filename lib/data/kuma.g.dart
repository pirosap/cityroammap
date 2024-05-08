// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kuma.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KumaImpl _$$KumaImplFromJson(Map<String, dynamic> json) => _$KumaImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      type: json['type'] as String,
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      confirmedTime: json['confirmedTime'] as String,
    );

Map<String, dynamic> _$$KumaImplToJson(_$KumaImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'url': instance.url,
      'type': instance.type,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'confirmedTime': instance.confirmedTime,
    };
