// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceModel _$$_DeviceModelFromJson(Map<String, dynamic> json) =>
    _$_DeviceModel(
      json['device_model'] as String?,
      json['id'] as String?,
      json['manufacturer'] as String?,
      json['name'] as String?,
      json['serial_number'] as String?,
      json['health'] as int?,
      json['status'] as String?,
      json['image_url'] as String?,
    );

Map<String, dynamic> _$$_DeviceModelToJson(_$_DeviceModel instance) =>
    <String, dynamic>{
      'device_model': instance.deviceModel,
      'id': instance.id,
      'manufacturer': instance.manufacturer,
      'name': instance.name,
      'serial_number': instance.serialNumber,
      'health': instance.health,
      'status': instance.status,
      'image_url': instance.imageUrl,
    };
