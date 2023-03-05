import 'package:freezed_annotation/freezed_annotation.dart';

import 'device_model.dart';

part 'device_response_model.freezed.dart';
part 'device_response_model.g.dart';

@freezed
class DeviceResponseModel with _$DeviceResponseModel {
  factory DeviceResponseModel({
    List<DeviceModel>? list,
  }) = _DeviceResponseModel;

  factory DeviceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceResponseModelFromJson(json);
}
