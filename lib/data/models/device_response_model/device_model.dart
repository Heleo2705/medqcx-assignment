import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_model.g.dart';

part 'device_model.freezed.dart';

@freezed
class DeviceModel with _$DeviceModel {
  const factory DeviceModel(
    @JsonKey(name: 'device_model') String? deviceModel,
    String? id,
    String? manufacturer,
    String? name,
    @JsonKey(name: 'serial_number') String? serialNumber,
    int? health,
    String? status,
    @JsonKey(name: 'image_url') String? imageUrl,
  ) = _DeviceModel;

  factory DeviceModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceModelFromJson(json);
}
