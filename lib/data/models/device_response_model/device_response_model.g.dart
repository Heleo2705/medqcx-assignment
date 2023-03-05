// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceResponseModel _$$_DeviceResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_DeviceResponseModel(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => DeviceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DeviceResponseModelToJson(
        _$_DeviceResponseModel instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
