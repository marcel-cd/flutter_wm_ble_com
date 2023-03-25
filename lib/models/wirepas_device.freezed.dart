// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wirepas_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WirepasDevice {
  String get id => throw _privateConstructorUsedError;
  int get token => throw _privateConstructorUsedError;
  int get firmwareVersionMajor => throw _privateConstructorUsedError;
  int get firmwareVersionMinor => throw _privateConstructorUsedError;
  bool get isSink => throw _privateConstructorUsedError;
  int get rssi => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WirepasDeviceCopyWith<WirepasDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WirepasDeviceCopyWith<$Res> {
  factory $WirepasDeviceCopyWith(
          WirepasDevice value, $Res Function(WirepasDevice) then) =
      _$WirepasDeviceCopyWithImpl<$Res, WirepasDevice>;
  @useResult
  $Res call(
      {String id,
      int token,
      int firmwareVersionMajor,
      int firmwareVersionMinor,
      bool isSink,
      int rssi});
}

/// @nodoc
class _$WirepasDeviceCopyWithImpl<$Res, $Val extends WirepasDevice>
    implements $WirepasDeviceCopyWith<$Res> {
  _$WirepasDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? token = null,
    Object? firmwareVersionMajor = null,
    Object? firmwareVersionMinor = null,
    Object? isSink = null,
    Object? rssi = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as int,
      firmwareVersionMajor: null == firmwareVersionMajor
          ? _value.firmwareVersionMajor
          : firmwareVersionMajor // ignore: cast_nullable_to_non_nullable
              as int,
      firmwareVersionMinor: null == firmwareVersionMinor
          ? _value.firmwareVersionMinor
          : firmwareVersionMinor // ignore: cast_nullable_to_non_nullable
              as int,
      isSink: null == isSink
          ? _value.isSink
          : isSink // ignore: cast_nullable_to_non_nullable
              as bool,
      rssi: null == rssi
          ? _value.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WirepasDeviceCopyWith<$Res>
    implements $WirepasDeviceCopyWith<$Res> {
  factory _$$_WirepasDeviceCopyWith(
          _$_WirepasDevice value, $Res Function(_$_WirepasDevice) then) =
      __$$_WirepasDeviceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int token,
      int firmwareVersionMajor,
      int firmwareVersionMinor,
      bool isSink,
      int rssi});
}

/// @nodoc
class __$$_WirepasDeviceCopyWithImpl<$Res>
    extends _$WirepasDeviceCopyWithImpl<$Res, _$_WirepasDevice>
    implements _$$_WirepasDeviceCopyWith<$Res> {
  __$$_WirepasDeviceCopyWithImpl(
      _$_WirepasDevice _value, $Res Function(_$_WirepasDevice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? token = null,
    Object? firmwareVersionMajor = null,
    Object? firmwareVersionMinor = null,
    Object? isSink = null,
    Object? rssi = null,
  }) {
    return _then(_$_WirepasDevice(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as int,
      firmwareVersionMajor: null == firmwareVersionMajor
          ? _value.firmwareVersionMajor
          : firmwareVersionMajor // ignore: cast_nullable_to_non_nullable
              as int,
      firmwareVersionMinor: null == firmwareVersionMinor
          ? _value.firmwareVersionMinor
          : firmwareVersionMinor // ignore: cast_nullable_to_non_nullable
              as int,
      isSink: null == isSink
          ? _value.isSink
          : isSink // ignore: cast_nullable_to_non_nullable
              as bool,
      rssi: null == rssi
          ? _value.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WirepasDevice implements _WirepasDevice {
  const _$_WirepasDevice(
      {required this.id,
      required this.token,
      required this.firmwareVersionMajor,
      required this.firmwareVersionMinor,
      required this.isSink,
      required this.rssi});

  @override
  final String id;
  @override
  final int token;
  @override
  final int firmwareVersionMajor;
  @override
  final int firmwareVersionMinor;
  @override
  final bool isSink;
  @override
  final int rssi;

  @override
  String toString() {
    return 'WirepasDevice(id: $id, token: $token, firmwareVersionMajor: $firmwareVersionMajor, firmwareVersionMinor: $firmwareVersionMinor, isSink: $isSink, rssi: $rssi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WirepasDevice &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.firmwareVersionMajor, firmwareVersionMajor) ||
                other.firmwareVersionMajor == firmwareVersionMajor) &&
            (identical(other.firmwareVersionMinor, firmwareVersionMinor) ||
                other.firmwareVersionMinor == firmwareVersionMinor) &&
            (identical(other.isSink, isSink) || other.isSink == isSink) &&
            (identical(other.rssi, rssi) || other.rssi == rssi));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, token, firmwareVersionMajor,
      firmwareVersionMinor, isSink, rssi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WirepasDeviceCopyWith<_$_WirepasDevice> get copyWith =>
      __$$_WirepasDeviceCopyWithImpl<_$_WirepasDevice>(this, _$identity);
}

abstract class _WirepasDevice implements WirepasDevice {
  const factory _WirepasDevice(
      {required final String id,
      required final int token,
      required final int firmwareVersionMajor,
      required final int firmwareVersionMinor,
      required final bool isSink,
      required final int rssi}) = _$_WirepasDevice;

  @override
  String get id;
  @override
  int get token;
  @override
  int get firmwareVersionMajor;
  @override
  int get firmwareVersionMinor;
  @override
  bool get isSink;
  @override
  int get rssi;
  @override
  @JsonKey(ignore: true)
  _$$_WirepasDeviceCopyWith<_$_WirepasDevice> get copyWith =>
      throw _privateConstructorUsedError;
}
