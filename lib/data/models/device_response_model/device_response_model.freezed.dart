// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceResponseModel _$DeviceResponseModelFromJson(Map<String, dynamic> json) {
  return _DeviceResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DeviceResponseModel {
  List<DeviceModel>? get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceResponseModelCopyWith<DeviceResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceResponseModelCopyWith<$Res> {
  factory $DeviceResponseModelCopyWith(
          DeviceResponseModel value, $Res Function(DeviceResponseModel) then) =
      _$DeviceResponseModelCopyWithImpl<$Res, DeviceResponseModel>;
  @useResult
  $Res call({List<DeviceModel>? list});
}

/// @nodoc
class _$DeviceResponseModelCopyWithImpl<$Res, $Val extends DeviceResponseModel>
    implements $DeviceResponseModelCopyWith<$Res> {
  _$DeviceResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<DeviceModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceResponseModelCopyWith<$Res>
    implements $DeviceResponseModelCopyWith<$Res> {
  factory _$$_DeviceResponseModelCopyWith(_$_DeviceResponseModel value,
          $Res Function(_$_DeviceResponseModel) then) =
      __$$_DeviceResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DeviceModel>? list});
}

/// @nodoc
class __$$_DeviceResponseModelCopyWithImpl<$Res>
    extends _$DeviceResponseModelCopyWithImpl<$Res, _$_DeviceResponseModel>
    implements _$$_DeviceResponseModelCopyWith<$Res> {
  __$$_DeviceResponseModelCopyWithImpl(_$_DeviceResponseModel _value,
      $Res Function(_$_DeviceResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$_DeviceResponseModel(
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<DeviceModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceResponseModel implements _DeviceResponseModel {
  _$_DeviceResponseModel({final List<DeviceModel>? list}) : _list = list;

  factory _$_DeviceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceResponseModelFromJson(json);

  final List<DeviceModel>? _list;
  @override
  List<DeviceModel>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DeviceResponseModel(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceResponseModel &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceResponseModelCopyWith<_$_DeviceResponseModel> get copyWith =>
      __$$_DeviceResponseModelCopyWithImpl<_$_DeviceResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceResponseModelToJson(
      this,
    );
  }
}

abstract class _DeviceResponseModel implements DeviceResponseModel {
  factory _DeviceResponseModel({final List<DeviceModel>? list}) =
      _$_DeviceResponseModel;

  factory _DeviceResponseModel.fromJson(Map<String, dynamic> json) =
      _$_DeviceResponseModel.fromJson;

  @override
  List<DeviceModel>? get list;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceResponseModelCopyWith<_$_DeviceResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
