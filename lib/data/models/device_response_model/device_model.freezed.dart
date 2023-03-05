// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceModel _$DeviceModelFromJson(Map<String, dynamic> json) {
  return _DeviceModel.fromJson(json);
}

/// @nodoc
mixin _$DeviceModel {
  @JsonKey(name: 'device_model')
  String? get deviceModel => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get manufacturer => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'serial_number')
  String? get serialNumber => throw _privateConstructorUsedError;
  int? get health => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceModelCopyWith<DeviceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceModelCopyWith<$Res> {
  factory $DeviceModelCopyWith(
          DeviceModel value, $Res Function(DeviceModel) then) =
      _$DeviceModelCopyWithImpl<$Res, DeviceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'device_model') String? deviceModel,
      String? id,
      String? manufacturer,
      String? name,
      @JsonKey(name: 'serial_number') String? serialNumber,
      int? health,
      String? status,
      @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class _$DeviceModelCopyWithImpl<$Res, $Val extends DeviceModel>
    implements $DeviceModelCopyWith<$Res> {
  _$DeviceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceModel = freezed,
    Object? id = freezed,
    Object? manufacturer = freezed,
    Object? name = freezed,
    Object? serialNumber = freezed,
    Object? health = freezed,
    Object? status = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      deviceModel: freezed == deviceModel
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      health: freezed == health
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceModelCopyWith<$Res>
    implements $DeviceModelCopyWith<$Res> {
  factory _$$_DeviceModelCopyWith(
          _$_DeviceModel value, $Res Function(_$_DeviceModel) then) =
      __$$_DeviceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'device_model') String? deviceModel,
      String? id,
      String? manufacturer,
      String? name,
      @JsonKey(name: 'serial_number') String? serialNumber,
      int? health,
      String? status,
      @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class __$$_DeviceModelCopyWithImpl<$Res>
    extends _$DeviceModelCopyWithImpl<$Res, _$_DeviceModel>
    implements _$$_DeviceModelCopyWith<$Res> {
  __$$_DeviceModelCopyWithImpl(
      _$_DeviceModel _value, $Res Function(_$_DeviceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceModel = freezed,
    Object? id = freezed,
    Object? manufacturer = freezed,
    Object? name = freezed,
    Object? serialNumber = freezed,
    Object? health = freezed,
    Object? status = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_DeviceModel(
      freezed == deviceModel
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == health
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceModel implements _DeviceModel {
  const _$_DeviceModel(
      @JsonKey(name: 'device_model') this.deviceModel,
      this.id,
      this.manufacturer,
      this.name,
      @JsonKey(name: 'serial_number') this.serialNumber,
      this.health,
      this.status,
      @JsonKey(name: 'image_url') this.imageUrl);

  factory _$_DeviceModel.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceModelFromJson(json);

  @override
  @JsonKey(name: 'device_model')
  final String? deviceModel;
  @override
  final String? id;
  @override
  final String? manufacturer;
  @override
  final String? name;
  @override
  @JsonKey(name: 'serial_number')
  final String? serialNumber;
  @override
  final int? health;
  @override
  final String? status;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  @override
  String toString() {
    return 'DeviceModel(deviceModel: $deviceModel, id: $id, manufacturer: $manufacturer, name: $name, serialNumber: $serialNumber, health: $health, status: $status, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceModel &&
            (identical(other.deviceModel, deviceModel) ||
                other.deviceModel == deviceModel) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.health, health) || other.health == health) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deviceModel, id, manufacturer,
      name, serialNumber, health, status, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceModelCopyWith<_$_DeviceModel> get copyWith =>
      __$$_DeviceModelCopyWithImpl<_$_DeviceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceModelToJson(
      this,
    );
  }
}

abstract class _DeviceModel implements DeviceModel {
  const factory _DeviceModel(
      @JsonKey(name: 'device_model') final String? deviceModel,
      final String? id,
      final String? manufacturer,
      final String? name,
      @JsonKey(name: 'serial_number') final String? serialNumber,
      final int? health,
      final String? status,
      @JsonKey(name: 'image_url') final String? imageUrl) = _$_DeviceModel;

  factory _DeviceModel.fromJson(Map<String, dynamic> json) =
      _$_DeviceModel.fromJson;

  @override
  @JsonKey(name: 'device_model')
  String? get deviceModel;
  @override
  String? get id;
  @override
  String? get manufacturer;
  @override
  String? get name;
  @override
  @JsonKey(name: 'serial_number')
  String? get serialNumber;
  @override
  int? get health;
  @override
  String? get status;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceModelCopyWith<_$_DeviceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
