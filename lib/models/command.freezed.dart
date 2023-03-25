// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommandPayload {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int messageId) resendMessageRequest,
    required TResult Function(int appVersion, int hardwareOS) scanRequest,
    required TResult Function(int requestId, int token,
            int firmwareVersionMajor, int firmwareVersionMinor, int isSink)
        scanResponse,
    required TResult Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)
        otapBeginUploadRequest,
    required TResult Function(
            int requestId, int startMessageId, int responseCode)
        otapBeginUploadResponse,
    required TResult Function(Uint8List data) otapUploadRequest,
    required TResult Function(
            int requestId, int responseCode, int percentageComplete)
        otapUploadResponse,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int messageId)? resendMessageRequest,
    TResult? Function(int appVersion, int hardwareOS)? scanRequest,
    TResult? Function(int requestId, int token, int firmwareVersionMajor,
            int firmwareVersionMinor, int isSink)?
        scanResponse,
    TResult? Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)?
        otapBeginUploadRequest,
    TResult? Function(int requestId, int startMessageId, int responseCode)?
        otapBeginUploadResponse,
    TResult? Function(Uint8List data)? otapUploadRequest,
    TResult? Function(int requestId, int responseCode, int percentageComplete)?
        otapUploadResponse,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int messageId)? resendMessageRequest,
    TResult Function(int appVersion, int hardwareOS)? scanRequest,
    TResult Function(int requestId, int token, int firmwareVersionMajor,
            int firmwareVersionMinor, int isSink)?
        scanResponse,
    TResult Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)?
        otapBeginUploadRequest,
    TResult Function(int requestId, int startMessageId, int responseCode)?
        otapBeginUploadResponse,
    TResult Function(Uint8List data)? otapUploadRequest,
    TResult Function(int requestId, int responseCode, int percentageComplete)?
        otapUploadResponse,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResendMessageRequest value) resendMessageRequest,
    required TResult Function(ScanRequest value) scanRequest,
    required TResult Function(ScanResponse value) scanResponse,
    required TResult Function(OtapUploadWriteRequest value)
        otapBeginUploadRequest,
    required TResult Function(OtapBeginUploadResponse value)
        otapBeginUploadResponse,
    required TResult Function(OtapUploadRequest value) otapUploadRequest,
    required TResult Function(OtapUploadResponse value) otapUploadResponse,
    required TResult Function(_CommandPayloadError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResendMessageRequest value)? resendMessageRequest,
    TResult? Function(ScanRequest value)? scanRequest,
    TResult? Function(ScanResponse value)? scanResponse,
    TResult? Function(OtapUploadWriteRequest value)? otapBeginUploadRequest,
    TResult? Function(OtapBeginUploadResponse value)? otapBeginUploadResponse,
    TResult? Function(OtapUploadRequest value)? otapUploadRequest,
    TResult? Function(OtapUploadResponse value)? otapUploadResponse,
    TResult? Function(_CommandPayloadError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResendMessageRequest value)? resendMessageRequest,
    TResult Function(ScanRequest value)? scanRequest,
    TResult Function(ScanResponse value)? scanResponse,
    TResult Function(OtapUploadWriteRequest value)? otapBeginUploadRequest,
    TResult Function(OtapBeginUploadResponse value)? otapBeginUploadResponse,
    TResult Function(OtapUploadRequest value)? otapUploadRequest,
    TResult Function(OtapUploadResponse value)? otapUploadResponse,
    TResult Function(_CommandPayloadError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandPayloadCopyWith<$Res> {
  factory $CommandPayloadCopyWith(
          CommandPayload value, $Res Function(CommandPayload) then) =
      _$CommandPayloadCopyWithImpl<$Res, CommandPayload>;
}

/// @nodoc
class _$CommandPayloadCopyWithImpl<$Res, $Val extends CommandPayload>
    implements $CommandPayloadCopyWith<$Res> {
  _$CommandPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ResendMessageRequestCopyWith<$Res> {
  factory _$$ResendMessageRequestCopyWith(_$ResendMessageRequest value,
          $Res Function(_$ResendMessageRequest) then) =
      __$$ResendMessageRequestCopyWithImpl<$Res>;
  @useResult
  $Res call({int messageId});
}

/// @nodoc
class __$$ResendMessageRequestCopyWithImpl<$Res>
    extends _$CommandPayloadCopyWithImpl<$Res, _$ResendMessageRequest>
    implements _$$ResendMessageRequestCopyWith<$Res> {
  __$$ResendMessageRequestCopyWithImpl(_$ResendMessageRequest _value,
      $Res Function(_$ResendMessageRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$ResendMessageRequest(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ResendMessageRequest
    with DiagnosticableTreeMixin
    implements ResendMessageRequest {
  const _$ResendMessageRequest({required this.messageId});

  @override
  final int messageId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommandPayload.resendMessageRequest(messageId: $messageId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommandPayload.resendMessageRequest'))
      ..add(DiagnosticsProperty('messageId', messageId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendMessageRequest &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendMessageRequestCopyWith<_$ResendMessageRequest> get copyWith =>
      __$$ResendMessageRequestCopyWithImpl<_$ResendMessageRequest>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int messageId) resendMessageRequest,
    required TResult Function(int appVersion, int hardwareOS) scanRequest,
    required TResult Function(int requestId, int token,
            int firmwareVersionMajor, int firmwareVersionMinor, int isSink)
        scanResponse,
    required TResult Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)
        otapBeginUploadRequest,
    required TResult Function(
            int requestId, int startMessageId, int responseCode)
        otapBeginUploadResponse,
    required TResult Function(Uint8List data) otapUploadRequest,
    required TResult Function(
            int requestId, int responseCode, int percentageComplete)
        otapUploadResponse,
    required TResult Function(String message) error,
  }) {
    return resendMessageRequest(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int messageId)? resendMessageRequest,
    TResult? Function(int appVersion, int hardwareOS)? scanRequest,
    TResult? Function(int requestId, int token, int firmwareVersionMajor,
            int firmwareVersionMinor, int isSink)?
        scanResponse,
    TResult? Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)?
        otapBeginUploadRequest,
    TResult? Function(int requestId, int startMessageId, int responseCode)?
        otapBeginUploadResponse,
    TResult? Function(Uint8List data)? otapUploadRequest,
    TResult? Function(int requestId, int responseCode, int percentageComplete)?
        otapUploadResponse,
    TResult? Function(String message)? error,
  }) {
    return resendMessageRequest?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int messageId)? resendMessageRequest,
    TResult Function(int appVersion, int hardwareOS)? scanRequest,
    TResult Function(int requestId, int token, int firmwareVersionMajor,
            int firmwareVersionMinor, int isSink)?
        scanResponse,
    TResult Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)?
        otapBeginUploadRequest,
    TResult Function(int requestId, int startMessageId, int responseCode)?
        otapBeginUploadResponse,
    TResult Function(Uint8List data)? otapUploadRequest,
    TResult Function(int requestId, int responseCode, int percentageComplete)?
        otapUploadResponse,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (resendMessageRequest != null) {
      return resendMessageRequest(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResendMessageRequest value) resendMessageRequest,
    required TResult Function(ScanRequest value) scanRequest,
    required TResult Function(ScanResponse value) scanResponse,
    required TResult Function(OtapUploadWriteRequest value)
        otapBeginUploadRequest,
    required TResult Function(OtapBeginUploadResponse value)
        otapBeginUploadResponse,
    required TResult Function(OtapUploadRequest value) otapUploadRequest,
    required TResult Function(OtapUploadResponse value) otapUploadResponse,
    required TResult Function(_CommandPayloadError value) error,
  }) {
    return resendMessageRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResendMessageRequest value)? resendMessageRequest,
    TResult? Function(ScanRequest value)? scanRequest,
    TResult? Function(ScanResponse value)? scanResponse,
    TResult? Function(OtapUploadWriteRequest value)? otapBeginUploadRequest,
    TResult? Function(OtapBeginUploadResponse value)? otapBeginUploadResponse,
    TResult? Function(OtapUploadRequest value)? otapUploadRequest,
    TResult? Function(OtapUploadResponse value)? otapUploadResponse,
    TResult? Function(_CommandPayloadError value)? error,
  }) {
    return resendMessageRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResendMessageRequest value)? resendMessageRequest,
    TResult Function(ScanRequest value)? scanRequest,
    TResult Function(ScanResponse value)? scanResponse,
    TResult Function(OtapUploadWriteRequest value)? otapBeginUploadRequest,
    TResult Function(OtapBeginUploadResponse value)? otapBeginUploadResponse,
    TResult Function(OtapUploadRequest value)? otapUploadRequest,
    TResult Function(OtapUploadResponse value)? otapUploadResponse,
    TResult Function(_CommandPayloadError value)? error,
    required TResult orElse(),
  }) {
    if (resendMessageRequest != null) {
      return resendMessageRequest(this);
    }
    return orElse();
  }
}

abstract class ResendMessageRequest implements CommandPayload {
  const factory ResendMessageRequest({required final int messageId}) =
      _$ResendMessageRequest;

  int get messageId;
  @JsonKey(ignore: true)
  _$$ResendMessageRequestCopyWith<_$ResendMessageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScanRequestCopyWith<$Res> {
  factory _$$ScanRequestCopyWith(
          _$ScanRequest value, $Res Function(_$ScanRequest) then) =
      __$$ScanRequestCopyWithImpl<$Res>;
  @useResult
  $Res call({int appVersion, int hardwareOS});
}

/// @nodoc
class __$$ScanRequestCopyWithImpl<$Res>
    extends _$CommandPayloadCopyWithImpl<$Res, _$ScanRequest>
    implements _$$ScanRequestCopyWith<$Res> {
  __$$ScanRequestCopyWithImpl(
      _$ScanRequest _value, $Res Function(_$ScanRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersion = null,
    Object? hardwareOS = null,
  }) {
    return _then(_$ScanRequest(
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as int,
      hardwareOS: null == hardwareOS
          ? _value.hardwareOS
          : hardwareOS // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ScanRequest with DiagnosticableTreeMixin implements ScanRequest {
  const _$ScanRequest({required this.appVersion, required this.hardwareOS});

  @override
  final int appVersion;
  @override
  final int hardwareOS;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommandPayload.scanRequest(appVersion: $appVersion, hardwareOS: $hardwareOS)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommandPayload.scanRequest'))
      ..add(DiagnosticsProperty('appVersion', appVersion))
      ..add(DiagnosticsProperty('hardwareOS', hardwareOS));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanRequest &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.hardwareOS, hardwareOS) ||
                other.hardwareOS == hardwareOS));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appVersion, hardwareOS);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanRequestCopyWith<_$ScanRequest> get copyWith =>
      __$$ScanRequestCopyWithImpl<_$ScanRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int messageId) resendMessageRequest,
    required TResult Function(int appVersion, int hardwareOS) scanRequest,
    required TResult Function(int requestId, int token,
            int firmwareVersionMajor, int firmwareVersionMinor, int isSink)
        scanResponse,
    required TResult Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)
        otapBeginUploadRequest,
    required TResult Function(
            int requestId, int startMessageId, int responseCode)
        otapBeginUploadResponse,
    required TResult Function(Uint8List data) otapUploadRequest,
    required TResult Function(
            int requestId, int responseCode, int percentageComplete)
        otapUploadResponse,
    required TResult Function(String message) error,
  }) {
    return scanRequest(appVersion, hardwareOS);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int messageId)? resendMessageRequest,
    TResult? Function(int appVersion, int hardwareOS)? scanRequest,
    TResult? Function(int requestId, int token, int firmwareVersionMajor,
            int firmwareVersionMinor, int isSink)?
        scanResponse,
    TResult? Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)?
        otapBeginUploadRequest,
    TResult? Function(int requestId, int startMessageId, int responseCode)?
        otapBeginUploadResponse,
    TResult? Function(Uint8List data)? otapUploadRequest,
    TResult? Function(int requestId, int responseCode, int percentageComplete)?
        otapUploadResponse,
    TResult? Function(String message)? error,
  }) {
    return scanRequest?.call(appVersion, hardwareOS);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int messageId)? resendMessageRequest,
    TResult Function(int appVersion, int hardwareOS)? scanRequest,
    TResult Function(int requestId, int token, int firmwareVersionMajor,
            int firmwareVersionMinor, int isSink)?
        scanResponse,
    TResult Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)?
        otapBeginUploadRequest,
    TResult Function(int requestId, int startMessageId, int responseCode)?
        otapBeginUploadResponse,
    TResult Function(Uint8List data)? otapUploadRequest,
    TResult Function(int requestId, int responseCode, int percentageComplete)?
        otapUploadResponse,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (scanRequest != null) {
      return scanRequest(appVersion, hardwareOS);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResendMessageRequest value) resendMessageRequest,
    required TResult Function(ScanRequest value) scanRequest,
    required TResult Function(ScanResponse value) scanResponse,
    required TResult Function(OtapUploadWriteRequest value)
        otapBeginUploadRequest,
    required TResult Function(OtapBeginUploadResponse value)
        otapBeginUploadResponse,
    required TResult Function(OtapUploadRequest value) otapUploadRequest,
    required TResult Function(OtapUploadResponse value) otapUploadResponse,
    required TResult Function(_CommandPayloadError value) error,
  }) {
    return scanRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResendMessageRequest value)? resendMessageRequest,
    TResult? Function(ScanRequest value)? scanRequest,
    TResult? Function(ScanResponse value)? scanResponse,
    TResult? Function(OtapUploadWriteRequest value)? otapBeginUploadRequest,
    TResult? Function(OtapBeginUploadResponse value)? otapBeginUploadResponse,
    TResult? Function(OtapUploadRequest value)? otapUploadRequest,
    TResult? Function(OtapUploadResponse value)? otapUploadResponse,
    TResult? Function(_CommandPayloadError value)? error,
  }) {
    return scanRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResendMessageRequest value)? resendMessageRequest,
    TResult Function(ScanRequest value)? scanRequest,
    TResult Function(ScanResponse value)? scanResponse,
    TResult Function(OtapUploadWriteRequest value)? otapBeginUploadRequest,
    TResult Function(OtapBeginUploadResponse value)? otapBeginUploadResponse,
    TResult Function(OtapUploadRequest value)? otapUploadRequest,
    TResult Function(OtapUploadResponse value)? otapUploadResponse,
    TResult Function(_CommandPayloadError value)? error,
    required TResult orElse(),
  }) {
    if (scanRequest != null) {
      return scanRequest(this);
    }
    return orElse();
  }
}

abstract class ScanRequest implements CommandPayload {
  const factory ScanRequest(
      {required final int appVersion,
      required final int hardwareOS}) = _$ScanRequest;

  int get appVersion;
  int get hardwareOS;
  @JsonKey(ignore: true)
  _$$ScanRequestCopyWith<_$ScanRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScanResponseCopyWith<$Res> {
  factory _$$ScanResponseCopyWith(
          _$ScanResponse value, $Res Function(_$ScanResponse) then) =
      __$$ScanResponseCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int requestId,
      int token,
      int firmwareVersionMajor,
      int firmwareVersionMinor,
      int isSink});
}

/// @nodoc
class __$$ScanResponseCopyWithImpl<$Res>
    extends _$CommandPayloadCopyWithImpl<$Res, _$ScanResponse>
    implements _$$ScanResponseCopyWith<$Res> {
  __$$ScanResponseCopyWithImpl(
      _$ScanResponse _value, $Res Function(_$ScanResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? token = null,
    Object? firmwareVersionMajor = null,
    Object? firmwareVersionMinor = null,
    Object? isSink = null,
  }) {
    return _then(_$ScanResponse(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
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
              as int,
    ));
  }
}

/// @nodoc

class _$ScanResponse with DiagnosticableTreeMixin implements ScanResponse {
  const _$ScanResponse(
      {required this.requestId,
      required this.token,
      required this.firmwareVersionMajor,
      required this.firmwareVersionMinor,
      required this.isSink});

  @override
  final int requestId;
  @override
  final int token;
  @override
  final int firmwareVersionMajor;
  @override
  final int firmwareVersionMinor;
  @override
  final int isSink;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommandPayload.scanResponse(requestId: $requestId, token: $token, firmwareVersionMajor: $firmwareVersionMajor, firmwareVersionMinor: $firmwareVersionMinor, isSink: $isSink)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommandPayload.scanResponse'))
      ..add(DiagnosticsProperty('requestId', requestId))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('firmwareVersionMajor', firmwareVersionMajor))
      ..add(DiagnosticsProperty('firmwareVersionMinor', firmwareVersionMinor))
      ..add(DiagnosticsProperty('isSink', isSink));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanResponse &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.firmwareVersionMajor, firmwareVersionMajor) ||
                other.firmwareVersionMajor == firmwareVersionMajor) &&
            (identical(other.firmwareVersionMinor, firmwareVersionMinor) ||
                other.firmwareVersionMinor == firmwareVersionMinor) &&
            (identical(other.isSink, isSink) || other.isSink == isSink));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, token,
      firmwareVersionMajor, firmwareVersionMinor, isSink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanResponseCopyWith<_$ScanResponse> get copyWith =>
      __$$ScanResponseCopyWithImpl<_$ScanResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int messageId) resendMessageRequest,
    required TResult Function(int appVersion, int hardwareOS) scanRequest,
    required TResult Function(int requestId, int token,
            int firmwareVersionMajor, int firmwareVersionMinor, int isSink)
        scanResponse,
    required TResult Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)
        otapBeginUploadRequest,
    required TResult Function(
            int requestId, int startMessageId, int responseCode)
        otapBeginUploadResponse,
    required TResult Function(Uint8List data) otapUploadRequest,
    required TResult Function(
            int requestId, int responseCode, int percentageComplete)
        otapUploadResponse,
    required TResult Function(String message) error,
  }) {
    return scanResponse(
        requestId, token, firmwareVersionMajor, firmwareVersionMinor, isSink);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int messageId)? resendMessageRequest,
    TResult? Function(int appVersion, int hardwareOS)? scanRequest,
    TResult? Function(int requestId, int token, int firmwareVersionMajor,
            int firmwareVersionMinor, int isSink)?
        scanResponse,
    TResult? Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)?
        otapBeginUploadRequest,
    TResult? Function(int requestId, int startMessageId, int responseCode)?
        otapBeginUploadResponse,
    TResult? Function(Uint8List data)? otapUploadRequest,
    TResult? Function(int requestId, int responseCode, int percentageComplete)?
        otapUploadResponse,
    TResult? Function(String message)? error,
  }) {
    return scanResponse?.call(
        requestId, token, firmwareVersionMajor, firmwareVersionMinor, isSink);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int messageId)? resendMessageRequest,
    TResult Function(int appVersion, int hardwareOS)? scanRequest,
    TResult Function(int requestId, int token, int firmwareVersionMajor,
            int firmwareVersionMinor, int isSink)?
        scanResponse,
    TResult Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)?
        otapBeginUploadRequest,
    TResult Function(int requestId, int startMessageId, int responseCode)?
        otapBeginUploadResponse,
    TResult Function(Uint8List data)? otapUploadRequest,
    TResult Function(int requestId, int responseCode, int percentageComplete)?
        otapUploadResponse,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (scanResponse != null) {
      return scanResponse(
          requestId, token, firmwareVersionMajor, firmwareVersionMinor, isSink);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResendMessageRequest value) resendMessageRequest,
    required TResult Function(ScanRequest value) scanRequest,
    required TResult Function(ScanResponse value) scanResponse,
    required TResult Function(OtapUploadWriteRequest value)
        otapBeginUploadRequest,
    required TResult Function(OtapBeginUploadResponse value)
        otapBeginUploadResponse,
    required TResult Function(OtapUploadRequest value) otapUploadRequest,
    required TResult Function(OtapUploadResponse value) otapUploadResponse,
    required TResult Function(_CommandPayloadError value) error,
  }) {
    return scanResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResendMessageRequest value)? resendMessageRequest,
    TResult? Function(ScanRequest value)? scanRequest,
    TResult? Function(ScanResponse value)? scanResponse,
    TResult? Function(OtapUploadWriteRequest value)? otapBeginUploadRequest,
    TResult? Function(OtapBeginUploadResponse value)? otapBeginUploadResponse,
    TResult? Function(OtapUploadRequest value)? otapUploadRequest,
    TResult? Function(OtapUploadResponse value)? otapUploadResponse,
    TResult? Function(_CommandPayloadError value)? error,
  }) {
    return scanResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResendMessageRequest value)? resendMessageRequest,
    TResult Function(ScanRequest value)? scanRequest,
    TResult Function(ScanResponse value)? scanResponse,
    TResult Function(OtapUploadWriteRequest value)? otapBeginUploadRequest,
    TResult Function(OtapBeginUploadResponse value)? otapBeginUploadResponse,
    TResult Function(OtapUploadRequest value)? otapUploadRequest,
    TResult Function(OtapUploadResponse value)? otapUploadResponse,
    TResult Function(_CommandPayloadError value)? error,
    required TResult orElse(),
  }) {
    if (scanResponse != null) {
      return scanResponse(this);
    }
    return orElse();
  }
}

abstract class ScanResponse implements CommandPayload {
  const factory ScanResponse(
      {required final int requestId,
      required final int token,
      required final int firmwareVersionMajor,
      required final int firmwareVersionMinor,
      required final int isSink}) = _$ScanResponse;

  int get requestId;
  int get token;
  int get firmwareVersionMajor;
  int get firmwareVersionMinor;
  int get isSink;
  @JsonKey(ignore: true)
  _$$ScanResponseCopyWith<_$ScanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtapUploadWriteRequestCopyWith<$Res> {
  factory _$$OtapUploadWriteRequestCopyWith(_$OtapUploadWriteRequest value,
          $Res Function(_$OtapUploadWriteRequest) then) =
      __$$OtapUploadWriteRequestCopyWithImpl<$Res>;
  @useResult
  $Res call({int scratchpadSequence, int scratchpadLength, int packageLength});
}

/// @nodoc
class __$$OtapUploadWriteRequestCopyWithImpl<$Res>
    extends _$CommandPayloadCopyWithImpl<$Res, _$OtapUploadWriteRequest>
    implements _$$OtapUploadWriteRequestCopyWith<$Res> {
  __$$OtapUploadWriteRequestCopyWithImpl(_$OtapUploadWriteRequest _value,
      $Res Function(_$OtapUploadWriteRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scratchpadSequence = null,
    Object? scratchpadLength = null,
    Object? packageLength = null,
  }) {
    return _then(_$OtapUploadWriteRequest(
      scratchpadSequence: null == scratchpadSequence
          ? _value.scratchpadSequence
          : scratchpadSequence // ignore: cast_nullable_to_non_nullable
              as int,
      scratchpadLength: null == scratchpadLength
          ? _value.scratchpadLength
          : scratchpadLength // ignore: cast_nullable_to_non_nullable
              as int,
      packageLength: null == packageLength
          ? _value.packageLength
          : packageLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OtapUploadWriteRequest
    with DiagnosticableTreeMixin
    implements OtapUploadWriteRequest {
  const _$OtapUploadWriteRequest(
      {required this.scratchpadSequence,
      required this.scratchpadLength,
      required this.packageLength});

  @override
  final int scratchpadSequence;
  @override
  final int scratchpadLength;
  @override
  final int packageLength;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommandPayload.otapBeginUploadRequest(scratchpadSequence: $scratchpadSequence, scratchpadLength: $scratchpadLength, packageLength: $packageLength)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CommandPayload.otapBeginUploadRequest'))
      ..add(DiagnosticsProperty('scratchpadSequence', scratchpadSequence))
      ..add(DiagnosticsProperty('scratchpadLength', scratchpadLength))
      ..add(DiagnosticsProperty('packageLength', packageLength));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtapUploadWriteRequest &&
            (identical(other.scratchpadSequence, scratchpadSequence) ||
                other.scratchpadSequence == scratchpadSequence) &&
            (identical(other.scratchpadLength, scratchpadLength) ||
                other.scratchpadLength == scratchpadLength) &&
            (identical(other.packageLength, packageLength) ||
                other.packageLength == packageLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, scratchpadSequence, scratchpadLength, packageLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtapUploadWriteRequestCopyWith<_$OtapUploadWriteRequest> get copyWith =>
      __$$OtapUploadWriteRequestCopyWithImpl<_$OtapUploadWriteRequest>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int messageId) resendMessageRequest,
    required TResult Function(int appVersion, int hardwareOS) scanRequest,
    required TResult Function(int requestId, int token,
            int firmwareVersionMajor, int firmwareVersionMinor, int isSink)
        scanResponse,
    required TResult Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)
        otapBeginUploadRequest,
    required TResult Function(
            int requestId, int startMessageId, int responseCode)
        otapBeginUploadResponse,
    required TResult Function(Uint8List data) otapUploadRequest,
    required TResult Function(
            int requestId, int responseCode, int percentageComplete)
        otapUploadResponse,
    required TResult Function(String message) error,
  }) {
    return otapBeginUploadRequest(
        scratchpadSequence, scratchpadLength, packageLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int messageId)? resendMessageRequest,
    TResult? Function(int appVersion, int hardwareOS)? scanRequest,
    TResult? Function(int requestId, int token, int firmwareVersionMajor,
            int firmwareVersionMinor, int isSink)?
        scanResponse,
    TResult? Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)?
        otapBeginUploadRequest,
    TResult? Function(int requestId, int startMessageId, int responseCode)?
        otapBeginUploadResponse,
    TResult? Function(Uint8List data)? otapUploadRequest,
    TResult? Function(int requestId, int responseCode, int percentageComplete)?
        otapUploadResponse,
    TResult? Function(String message)? error,
  }) {
    return otapBeginUploadRequest?.call(
        scratchpadSequence, scratchpadLength, packageLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int messageId)? resendMessageRequest,
    TResult Function(int appVersion, int hardwareOS)? scanRequest,
    TResult Function(int requestId, int token, int firmwareVersionMajor,
            int firmwareVersionMinor, int isSink)?
        scanResponse,
    TResult Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)?
        otapBeginUploadRequest,
    TResult Function(int requestId, int startMessageId, int responseCode)?
        otapBeginUploadResponse,
    TResult Function(Uint8List data)? otapUploadRequest,
    TResult Function(int requestId, int responseCode, int percentageComplete)?
        otapUploadResponse,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (otapBeginUploadRequest != null) {
      return otapBeginUploadRequest(
          scratchpadSequence, scratchpadLength, packageLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResendMessageRequest value) resendMessageRequest,
    required TResult Function(ScanRequest value) scanRequest,
    required TResult Function(ScanResponse value) scanResponse,
    required TResult Function(OtapUploadWriteRequest value)
        otapBeginUploadRequest,
    required TResult Function(OtapBeginUploadResponse value)
        otapBeginUploadResponse,
    required TResult Function(OtapUploadRequest value) otapUploadRequest,
    required TResult Function(OtapUploadResponse value) otapUploadResponse,
    required TResult Function(_CommandPayloadError value) error,
  }) {
    return otapBeginUploadRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResendMessageRequest value)? resendMessageRequest,
    TResult? Function(ScanRequest value)? scanRequest,
    TResult? Function(ScanResponse value)? scanResponse,
    TResult? Function(OtapUploadWriteRequest value)? otapBeginUploadRequest,
    TResult? Function(OtapBeginUploadResponse value)? otapBeginUploadResponse,
    TResult? Function(OtapUploadRequest value)? otapUploadRequest,
    TResult? Function(OtapUploadResponse value)? otapUploadResponse,
    TResult? Function(_CommandPayloadError value)? error,
  }) {
    return otapBeginUploadRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResendMessageRequest value)? resendMessageRequest,
    TResult Function(ScanRequest value)? scanRequest,
    TResult Function(ScanResponse value)? scanResponse,
    TResult Function(OtapUploadWriteRequest value)? otapBeginUploadRequest,
    TResult Function(OtapBeginUploadResponse value)? otapBeginUploadResponse,
    TResult Function(OtapUploadRequest value)? otapUploadRequest,
    TResult Function(OtapUploadResponse value)? otapUploadResponse,
    TResult Function(_CommandPayloadError value)? error,
    required TResult orElse(),
  }) {
    if (otapBeginUploadRequest != null) {
      return otapBeginUploadRequest(this);
    }
    return orElse();
  }
}

abstract class OtapUploadWriteRequest implements CommandPayload {
  const factory OtapUploadWriteRequest(
      {required final int scratchpadSequence,
      required final int scratchpadLength,
      required final int packageLength}) = _$OtapUploadWriteRequest;

  int get scratchpadSequence;
  int get scratchpadLength;
  int get packageLength;
  @JsonKey(ignore: true)
  _$$OtapUploadWriteRequestCopyWith<_$OtapUploadWriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtapBeginUploadResponseCopyWith<$Res> {
  factory _$$OtapBeginUploadResponseCopyWith(_$OtapBeginUploadResponse value,
          $Res Function(_$OtapBeginUploadResponse) then) =
      __$$OtapBeginUploadResponseCopyWithImpl<$Res>;
  @useResult
  $Res call({int requestId, int startMessageId, int responseCode});
}

/// @nodoc
class __$$OtapBeginUploadResponseCopyWithImpl<$Res>
    extends _$CommandPayloadCopyWithImpl<$Res, _$OtapBeginUploadResponse>
    implements _$$OtapBeginUploadResponseCopyWith<$Res> {
  __$$OtapBeginUploadResponseCopyWithImpl(_$OtapBeginUploadResponse _value,
      $Res Function(_$OtapBeginUploadResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? startMessageId = null,
    Object? responseCode = null,
  }) {
    return _then(_$OtapBeginUploadResponse(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      startMessageId: null == startMessageId
          ? _value.startMessageId
          : startMessageId // ignore: cast_nullable_to_non_nullable
              as int,
      responseCode: null == responseCode
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OtapBeginUploadResponse
    with DiagnosticableTreeMixin
    implements OtapBeginUploadResponse {
  const _$OtapBeginUploadResponse(
      {required this.requestId,
      required this.startMessageId,
      required this.responseCode});

  @override
  final int requestId;
  @override
  final int startMessageId;
  @override
  final int responseCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommandPayload.otapBeginUploadResponse(requestId: $requestId, startMessageId: $startMessageId, responseCode: $responseCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CommandPayload.otapBeginUploadResponse'))
      ..add(DiagnosticsProperty('requestId', requestId))
      ..add(DiagnosticsProperty('startMessageId', startMessageId))
      ..add(DiagnosticsProperty('responseCode', responseCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtapBeginUploadResponse &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.startMessageId, startMessageId) ||
                other.startMessageId == startMessageId) &&
            (identical(other.responseCode, responseCode) ||
                other.responseCode == responseCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, requestId, startMessageId, responseCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtapBeginUploadResponseCopyWith<_$OtapBeginUploadResponse> get copyWith =>
      __$$OtapBeginUploadResponseCopyWithImpl<_$OtapBeginUploadResponse>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int messageId) resendMessageRequest,
    required TResult Function(int appVersion, int hardwareOS) scanRequest,
    required TResult Function(int requestId, int token,
            int firmwareVersionMajor, int firmwareVersionMinor, int isSink)
        scanResponse,
    required TResult Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)
        otapBeginUploadRequest,
    required TResult Function(
            int requestId, int startMessageId, int responseCode)
        otapBeginUploadResponse,
    required TResult Function(Uint8List data) otapUploadRequest,
    required TResult Function(
            int requestId, int responseCode, int percentageComplete)
        otapUploadResponse,
    required TResult Function(String message) error,
  }) {
    return otapBeginUploadResponse(requestId, startMessageId, responseCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int messageId)? resendMessageRequest,
    TResult? Function(int appVersion, int hardwareOS)? scanRequest,
    TResult? Function(int requestId, int token, int firmwareVersionMajor,
            int firmwareVersionMinor, int isSink)?
        scanResponse,
    TResult? Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)?
        otapBeginUploadRequest,
    TResult? Function(int requestId, int startMessageId, int responseCode)?
        otapBeginUploadResponse,
    TResult? Function(Uint8List data)? otapUploadRequest,
    TResult? Function(int requestId, int responseCode, int percentageComplete)?
        otapUploadResponse,
    TResult? Function(String message)? error,
  }) {
    return otapBeginUploadResponse?.call(
        requestId, startMessageId, responseCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int messageId)? resendMessageRequest,
    TResult Function(int appVersion, int hardwareOS)? scanRequest,
    TResult Function(int requestId, int token, int firmwareVersionMajor,
            int firmwareVersionMinor, int isSink)?
        scanResponse,
    TResult Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)?
        otapBeginUploadRequest,
    TResult Function(int requestId, int startMessageId, int responseCode)?
        otapBeginUploadResponse,
    TResult Function(Uint8List data)? otapUploadRequest,
    TResult Function(int requestId, int responseCode, int percentageComplete)?
        otapUploadResponse,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (otapBeginUploadResponse != null) {
      return otapBeginUploadResponse(requestId, startMessageId, responseCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResendMessageRequest value) resendMessageRequest,
    required TResult Function(ScanRequest value) scanRequest,
    required TResult Function(ScanResponse value) scanResponse,
    required TResult Function(OtapUploadWriteRequest value)
        otapBeginUploadRequest,
    required TResult Function(OtapBeginUploadResponse value)
        otapBeginUploadResponse,
    required TResult Function(OtapUploadRequest value) otapUploadRequest,
    required TResult Function(OtapUploadResponse value) otapUploadResponse,
    required TResult Function(_CommandPayloadError value) error,
  }) {
    return otapBeginUploadResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResendMessageRequest value)? resendMessageRequest,
    TResult? Function(ScanRequest value)? scanRequest,
    TResult? Function(ScanResponse value)? scanResponse,
    TResult? Function(OtapUploadWriteRequest value)? otapBeginUploadRequest,
    TResult? Function(OtapBeginUploadResponse value)? otapBeginUploadResponse,
    TResult? Function(OtapUploadRequest value)? otapUploadRequest,
    TResult? Function(OtapUploadResponse value)? otapUploadResponse,
    TResult? Function(_CommandPayloadError value)? error,
  }) {
    return otapBeginUploadResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResendMessageRequest value)? resendMessageRequest,
    TResult Function(ScanRequest value)? scanRequest,
    TResult Function(ScanResponse value)? scanResponse,
    TResult Function(OtapUploadWriteRequest value)? otapBeginUploadRequest,
    TResult Function(OtapBeginUploadResponse value)? otapBeginUploadResponse,
    TResult Function(OtapUploadRequest value)? otapUploadRequest,
    TResult Function(OtapUploadResponse value)? otapUploadResponse,
    TResult Function(_CommandPayloadError value)? error,
    required TResult orElse(),
  }) {
    if (otapBeginUploadResponse != null) {
      return otapBeginUploadResponse(this);
    }
    return orElse();
  }
}

abstract class OtapBeginUploadResponse implements CommandPayload {
  const factory OtapBeginUploadResponse(
      {required final int requestId,
      required final int startMessageId,
      required final int responseCode}) = _$OtapBeginUploadResponse;

  int get requestId;
  int get startMessageId;
  int get responseCode;
  @JsonKey(ignore: true)
  _$$OtapBeginUploadResponseCopyWith<_$OtapBeginUploadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtapUploadRequestCopyWith<$Res> {
  factory _$$OtapUploadRequestCopyWith(
          _$OtapUploadRequest value, $Res Function(_$OtapUploadRequest) then) =
      __$$OtapUploadRequestCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List data});
}

/// @nodoc
class __$$OtapUploadRequestCopyWithImpl<$Res>
    extends _$CommandPayloadCopyWithImpl<$Res, _$OtapUploadRequest>
    implements _$$OtapUploadRequestCopyWith<$Res> {
  __$$OtapUploadRequestCopyWithImpl(
      _$OtapUploadRequest _value, $Res Function(_$OtapUploadRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$OtapUploadRequest(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$OtapUploadRequest
    with DiagnosticableTreeMixin
    implements OtapUploadRequest {
  const _$OtapUploadRequest({required this.data});

  @override
  final Uint8List data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommandPayload.otapUploadRequest(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommandPayload.otapUploadRequest'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtapUploadRequest &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtapUploadRequestCopyWith<_$OtapUploadRequest> get copyWith =>
      __$$OtapUploadRequestCopyWithImpl<_$OtapUploadRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int messageId) resendMessageRequest,
    required TResult Function(int appVersion, int hardwareOS) scanRequest,
    required TResult Function(int requestId, int token,
            int firmwareVersionMajor, int firmwareVersionMinor, int isSink)
        scanResponse,
    required TResult Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)
        otapBeginUploadRequest,
    required TResult Function(
            int requestId, int startMessageId, int responseCode)
        otapBeginUploadResponse,
    required TResult Function(Uint8List data) otapUploadRequest,
    required TResult Function(
            int requestId, int responseCode, int percentageComplete)
        otapUploadResponse,
    required TResult Function(String message) error,
  }) {
    return otapUploadRequest(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int messageId)? resendMessageRequest,
    TResult? Function(int appVersion, int hardwareOS)? scanRequest,
    TResult? Function(int requestId, int token, int firmwareVersionMajor,
            int firmwareVersionMinor, int isSink)?
        scanResponse,
    TResult? Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)?
        otapBeginUploadRequest,
    TResult? Function(int requestId, int startMessageId, int responseCode)?
        otapBeginUploadResponse,
    TResult? Function(Uint8List data)? otapUploadRequest,
    TResult? Function(int requestId, int responseCode, int percentageComplete)?
        otapUploadResponse,
    TResult? Function(String message)? error,
  }) {
    return otapUploadRequest?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int messageId)? resendMessageRequest,
    TResult Function(int appVersion, int hardwareOS)? scanRequest,
    TResult Function(int requestId, int token, int firmwareVersionMajor,
            int firmwareVersionMinor, int isSink)?
        scanResponse,
    TResult Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)?
        otapBeginUploadRequest,
    TResult Function(int requestId, int startMessageId, int responseCode)?
        otapBeginUploadResponse,
    TResult Function(Uint8List data)? otapUploadRequest,
    TResult Function(int requestId, int responseCode, int percentageComplete)?
        otapUploadResponse,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (otapUploadRequest != null) {
      return otapUploadRequest(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResendMessageRequest value) resendMessageRequest,
    required TResult Function(ScanRequest value) scanRequest,
    required TResult Function(ScanResponse value) scanResponse,
    required TResult Function(OtapUploadWriteRequest value)
        otapBeginUploadRequest,
    required TResult Function(OtapBeginUploadResponse value)
        otapBeginUploadResponse,
    required TResult Function(OtapUploadRequest value) otapUploadRequest,
    required TResult Function(OtapUploadResponse value) otapUploadResponse,
    required TResult Function(_CommandPayloadError value) error,
  }) {
    return otapUploadRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResendMessageRequest value)? resendMessageRequest,
    TResult? Function(ScanRequest value)? scanRequest,
    TResult? Function(ScanResponse value)? scanResponse,
    TResult? Function(OtapUploadWriteRequest value)? otapBeginUploadRequest,
    TResult? Function(OtapBeginUploadResponse value)? otapBeginUploadResponse,
    TResult? Function(OtapUploadRequest value)? otapUploadRequest,
    TResult? Function(OtapUploadResponse value)? otapUploadResponse,
    TResult? Function(_CommandPayloadError value)? error,
  }) {
    return otapUploadRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResendMessageRequest value)? resendMessageRequest,
    TResult Function(ScanRequest value)? scanRequest,
    TResult Function(ScanResponse value)? scanResponse,
    TResult Function(OtapUploadWriteRequest value)? otapBeginUploadRequest,
    TResult Function(OtapBeginUploadResponse value)? otapBeginUploadResponse,
    TResult Function(OtapUploadRequest value)? otapUploadRequest,
    TResult Function(OtapUploadResponse value)? otapUploadResponse,
    TResult Function(_CommandPayloadError value)? error,
    required TResult orElse(),
  }) {
    if (otapUploadRequest != null) {
      return otapUploadRequest(this);
    }
    return orElse();
  }
}

abstract class OtapUploadRequest implements CommandPayload {
  const factory OtapUploadRequest({required final Uint8List data}) =
      _$OtapUploadRequest;

  Uint8List get data;
  @JsonKey(ignore: true)
  _$$OtapUploadRequestCopyWith<_$OtapUploadRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtapUploadResponseCopyWith<$Res> {
  factory _$$OtapUploadResponseCopyWith(_$OtapUploadResponse value,
          $Res Function(_$OtapUploadResponse) then) =
      __$$OtapUploadResponseCopyWithImpl<$Res>;
  @useResult
  $Res call({int requestId, int responseCode, int percentageComplete});
}

/// @nodoc
class __$$OtapUploadResponseCopyWithImpl<$Res>
    extends _$CommandPayloadCopyWithImpl<$Res, _$OtapUploadResponse>
    implements _$$OtapUploadResponseCopyWith<$Res> {
  __$$OtapUploadResponseCopyWithImpl(
      _$OtapUploadResponse _value, $Res Function(_$OtapUploadResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? responseCode = null,
    Object? percentageComplete = null,
  }) {
    return _then(_$OtapUploadResponse(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      responseCode: null == responseCode
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as int,
      percentageComplete: null == percentageComplete
          ? _value.percentageComplete
          : percentageComplete // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OtapUploadResponse
    with DiagnosticableTreeMixin
    implements OtapUploadResponse {
  const _$OtapUploadResponse(
      {required this.requestId,
      required this.responseCode,
      required this.percentageComplete});

  @override
  final int requestId;
  @override
  final int responseCode;
  @override
  final int percentageComplete;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommandPayload.otapUploadResponse(requestId: $requestId, responseCode: $responseCode, percentageComplete: $percentageComplete)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommandPayload.otapUploadResponse'))
      ..add(DiagnosticsProperty('requestId', requestId))
      ..add(DiagnosticsProperty('responseCode', responseCode))
      ..add(DiagnosticsProperty('percentageComplete', percentageComplete));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtapUploadResponse &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.responseCode, responseCode) ||
                other.responseCode == responseCode) &&
            (identical(other.percentageComplete, percentageComplete) ||
                other.percentageComplete == percentageComplete));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, requestId, responseCode, percentageComplete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtapUploadResponseCopyWith<_$OtapUploadResponse> get copyWith =>
      __$$OtapUploadResponseCopyWithImpl<_$OtapUploadResponse>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int messageId) resendMessageRequest,
    required TResult Function(int appVersion, int hardwareOS) scanRequest,
    required TResult Function(int requestId, int token,
            int firmwareVersionMajor, int firmwareVersionMinor, int isSink)
        scanResponse,
    required TResult Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)
        otapBeginUploadRequest,
    required TResult Function(
            int requestId, int startMessageId, int responseCode)
        otapBeginUploadResponse,
    required TResult Function(Uint8List data) otapUploadRequest,
    required TResult Function(
            int requestId, int responseCode, int percentageComplete)
        otapUploadResponse,
    required TResult Function(String message) error,
  }) {
    return otapUploadResponse(requestId, responseCode, percentageComplete);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int messageId)? resendMessageRequest,
    TResult? Function(int appVersion, int hardwareOS)? scanRequest,
    TResult? Function(int requestId, int token, int firmwareVersionMajor,
            int firmwareVersionMinor, int isSink)?
        scanResponse,
    TResult? Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)?
        otapBeginUploadRequest,
    TResult? Function(int requestId, int startMessageId, int responseCode)?
        otapBeginUploadResponse,
    TResult? Function(Uint8List data)? otapUploadRequest,
    TResult? Function(int requestId, int responseCode, int percentageComplete)?
        otapUploadResponse,
    TResult? Function(String message)? error,
  }) {
    return otapUploadResponse?.call(
        requestId, responseCode, percentageComplete);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int messageId)? resendMessageRequest,
    TResult Function(int appVersion, int hardwareOS)? scanRequest,
    TResult Function(int requestId, int token, int firmwareVersionMajor,
            int firmwareVersionMinor, int isSink)?
        scanResponse,
    TResult Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)?
        otapBeginUploadRequest,
    TResult Function(int requestId, int startMessageId, int responseCode)?
        otapBeginUploadResponse,
    TResult Function(Uint8List data)? otapUploadRequest,
    TResult Function(int requestId, int responseCode, int percentageComplete)?
        otapUploadResponse,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (otapUploadResponse != null) {
      return otapUploadResponse(requestId, responseCode, percentageComplete);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResendMessageRequest value) resendMessageRequest,
    required TResult Function(ScanRequest value) scanRequest,
    required TResult Function(ScanResponse value) scanResponse,
    required TResult Function(OtapUploadWriteRequest value)
        otapBeginUploadRequest,
    required TResult Function(OtapBeginUploadResponse value)
        otapBeginUploadResponse,
    required TResult Function(OtapUploadRequest value) otapUploadRequest,
    required TResult Function(OtapUploadResponse value) otapUploadResponse,
    required TResult Function(_CommandPayloadError value) error,
  }) {
    return otapUploadResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResendMessageRequest value)? resendMessageRequest,
    TResult? Function(ScanRequest value)? scanRequest,
    TResult? Function(ScanResponse value)? scanResponse,
    TResult? Function(OtapUploadWriteRequest value)? otapBeginUploadRequest,
    TResult? Function(OtapBeginUploadResponse value)? otapBeginUploadResponse,
    TResult? Function(OtapUploadRequest value)? otapUploadRequest,
    TResult? Function(OtapUploadResponse value)? otapUploadResponse,
    TResult? Function(_CommandPayloadError value)? error,
  }) {
    return otapUploadResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResendMessageRequest value)? resendMessageRequest,
    TResult Function(ScanRequest value)? scanRequest,
    TResult Function(ScanResponse value)? scanResponse,
    TResult Function(OtapUploadWriteRequest value)? otapBeginUploadRequest,
    TResult Function(OtapBeginUploadResponse value)? otapBeginUploadResponse,
    TResult Function(OtapUploadRequest value)? otapUploadRequest,
    TResult Function(OtapUploadResponse value)? otapUploadResponse,
    TResult Function(_CommandPayloadError value)? error,
    required TResult orElse(),
  }) {
    if (otapUploadResponse != null) {
      return otapUploadResponse(this);
    }
    return orElse();
  }
}

abstract class OtapUploadResponse implements CommandPayload {
  const factory OtapUploadResponse(
      {required final int requestId,
      required final int responseCode,
      required final int percentageComplete}) = _$OtapUploadResponse;

  int get requestId;
  int get responseCode;
  int get percentageComplete;
  @JsonKey(ignore: true)
  _$$OtapUploadResponseCopyWith<_$OtapUploadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CommandPayloadErrorCopyWith<$Res> {
  factory _$$_CommandPayloadErrorCopyWith(_$_CommandPayloadError value,
          $Res Function(_$_CommandPayloadError) then) =
      __$$_CommandPayloadErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_CommandPayloadErrorCopyWithImpl<$Res>
    extends _$CommandPayloadCopyWithImpl<$Res, _$_CommandPayloadError>
    implements _$$_CommandPayloadErrorCopyWith<$Res> {
  __$$_CommandPayloadErrorCopyWithImpl(_$_CommandPayloadError _value,
      $Res Function(_$_CommandPayloadError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_CommandPayloadError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CommandPayloadError
    with DiagnosticableTreeMixin
    implements _CommandPayloadError {
  const _$_CommandPayloadError(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommandPayload.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommandPayload.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommandPayloadError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommandPayloadErrorCopyWith<_$_CommandPayloadError> get copyWith =>
      __$$_CommandPayloadErrorCopyWithImpl<_$_CommandPayloadError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int messageId) resendMessageRequest,
    required TResult Function(int appVersion, int hardwareOS) scanRequest,
    required TResult Function(int requestId, int token,
            int firmwareVersionMajor, int firmwareVersionMinor, int isSink)
        scanResponse,
    required TResult Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)
        otapBeginUploadRequest,
    required TResult Function(
            int requestId, int startMessageId, int responseCode)
        otapBeginUploadResponse,
    required TResult Function(Uint8List data) otapUploadRequest,
    required TResult Function(
            int requestId, int responseCode, int percentageComplete)
        otapUploadResponse,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int messageId)? resendMessageRequest,
    TResult? Function(int appVersion, int hardwareOS)? scanRequest,
    TResult? Function(int requestId, int token, int firmwareVersionMajor,
            int firmwareVersionMinor, int isSink)?
        scanResponse,
    TResult? Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)?
        otapBeginUploadRequest,
    TResult? Function(int requestId, int startMessageId, int responseCode)?
        otapBeginUploadResponse,
    TResult? Function(Uint8List data)? otapUploadRequest,
    TResult? Function(int requestId, int responseCode, int percentageComplete)?
        otapUploadResponse,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int messageId)? resendMessageRequest,
    TResult Function(int appVersion, int hardwareOS)? scanRequest,
    TResult Function(int requestId, int token, int firmwareVersionMajor,
            int firmwareVersionMinor, int isSink)?
        scanResponse,
    TResult Function(
            int scratchpadSequence, int scratchpadLength, int packageLength)?
        otapBeginUploadRequest,
    TResult Function(int requestId, int startMessageId, int responseCode)?
        otapBeginUploadResponse,
    TResult Function(Uint8List data)? otapUploadRequest,
    TResult Function(int requestId, int responseCode, int percentageComplete)?
        otapUploadResponse,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResendMessageRequest value) resendMessageRequest,
    required TResult Function(ScanRequest value) scanRequest,
    required TResult Function(ScanResponse value) scanResponse,
    required TResult Function(OtapUploadWriteRequest value)
        otapBeginUploadRequest,
    required TResult Function(OtapBeginUploadResponse value)
        otapBeginUploadResponse,
    required TResult Function(OtapUploadRequest value) otapUploadRequest,
    required TResult Function(OtapUploadResponse value) otapUploadResponse,
    required TResult Function(_CommandPayloadError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResendMessageRequest value)? resendMessageRequest,
    TResult? Function(ScanRequest value)? scanRequest,
    TResult? Function(ScanResponse value)? scanResponse,
    TResult? Function(OtapUploadWriteRequest value)? otapBeginUploadRequest,
    TResult? Function(OtapBeginUploadResponse value)? otapBeginUploadResponse,
    TResult? Function(OtapUploadRequest value)? otapUploadRequest,
    TResult? Function(OtapUploadResponse value)? otapUploadResponse,
    TResult? Function(_CommandPayloadError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResendMessageRequest value)? resendMessageRequest,
    TResult Function(ScanRequest value)? scanRequest,
    TResult Function(ScanResponse value)? scanResponse,
    TResult Function(OtapUploadWriteRequest value)? otapBeginUploadRequest,
    TResult Function(OtapBeginUploadResponse value)? otapBeginUploadResponse,
    TResult Function(OtapUploadRequest value)? otapUploadRequest,
    TResult Function(OtapUploadResponse value)? otapUploadResponse,
    TResult Function(_CommandPayloadError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CommandPayloadError implements CommandPayload {
  const factory _CommandPayloadError(final String message) =
      _$_CommandPayloadError;

  String get message;
  @JsonKey(ignore: true)
  _$$_CommandPayloadErrorCopyWith<_$_CommandPayloadError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Command {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int messageId, int command, CommandPayload payload, int requestId)
        $default, {
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int messageId, int command, CommandPayload payload, int requestId)?
        $default, {
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int messageId, int command, CommandPayload payload, int requestId)?
        $default, {
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Command value) $default, {
    required TResult Function(_CommandError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Command value)? $default, {
    TResult? Function(_CommandError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Command value)? $default, {
    TResult Function(_CommandError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandCopyWith<$Res> {
  factory $CommandCopyWith(Command value, $Res Function(Command) then) =
      _$CommandCopyWithImpl<$Res, Command>;
}

/// @nodoc
class _$CommandCopyWithImpl<$Res, $Val extends Command>
    implements $CommandCopyWith<$Res> {
  _$CommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CommandCopyWith<$Res> {
  factory _$$_CommandCopyWith(
          _$_Command value, $Res Function(_$_Command) then) =
      __$$_CommandCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int messageId, int command, CommandPayload payload, int requestId});

  $CommandPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_CommandCopyWithImpl<$Res>
    extends _$CommandCopyWithImpl<$Res, _$_Command>
    implements _$$_CommandCopyWith<$Res> {
  __$$_CommandCopyWithImpl(_$_Command _value, $Res Function(_$_Command) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? command = null,
    Object? payload = null,
    Object? requestId = null,
  }) {
    return _then(_$_Command(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
      command: null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as int,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as CommandPayload,
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CommandPayloadCopyWith<$Res> get payload {
    return $CommandPayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc

class _$_Command with DiagnosticableTreeMixin implements _Command {
  _$_Command(
      {required this.messageId,
      required this.command,
      required this.payload,
      this.requestId = 0});

  @override
  final int messageId;
  @override
  final int command;
  @override
  final CommandPayload payload;
  @override
  @JsonKey()
  final int requestId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Command(messageId: $messageId, command: $command, payload: $payload, requestId: $requestId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Command'))
      ..add(DiagnosticsProperty('messageId', messageId))
      ..add(DiagnosticsProperty('command', command))
      ..add(DiagnosticsProperty('payload', payload))
      ..add(DiagnosticsProperty('requestId', requestId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Command &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.command, command) || other.command == command) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, messageId, command, payload, requestId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommandCopyWith<_$_Command> get copyWith =>
      __$$_CommandCopyWithImpl<_$_Command>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int messageId, int command, CommandPayload payload, int requestId)
        $default, {
    required TResult Function(String message) error,
  }) {
    return $default(messageId, command, payload, requestId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int messageId, int command, CommandPayload payload, int requestId)?
        $default, {
    TResult? Function(String message)? error,
  }) {
    return $default?.call(messageId, command, payload, requestId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int messageId, int command, CommandPayload payload, int requestId)?
        $default, {
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(messageId, command, payload, requestId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Command value) $default, {
    required TResult Function(_CommandError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Command value)? $default, {
    TResult? Function(_CommandError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Command value)? $default, {
    TResult Function(_CommandError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Command implements Command {
  factory _Command(
      {required final int messageId,
      required final int command,
      required final CommandPayload payload,
      final int requestId}) = _$_Command;

  int get messageId;
  int get command;
  CommandPayload get payload;
  int get requestId;
  @JsonKey(ignore: true)
  _$$_CommandCopyWith<_$_Command> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CommandErrorCopyWith<$Res> {
  factory _$$_CommandErrorCopyWith(
          _$_CommandError value, $Res Function(_$_CommandError) then) =
      __$$_CommandErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_CommandErrorCopyWithImpl<$Res>
    extends _$CommandCopyWithImpl<$Res, _$_CommandError>
    implements _$$_CommandErrorCopyWith<$Res> {
  __$$_CommandErrorCopyWithImpl(
      _$_CommandError _value, $Res Function(_$_CommandError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_CommandError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CommandError with DiagnosticableTreeMixin implements _CommandError {
  const _$_CommandError(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Command.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Command.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommandError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommandErrorCopyWith<_$_CommandError> get copyWith =>
      __$$_CommandErrorCopyWithImpl<_$_CommandError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int messageId, int command, CommandPayload payload, int requestId)
        $default, {
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int messageId, int command, CommandPayload payload, int requestId)?
        $default, {
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int messageId, int command, CommandPayload payload, int requestId)?
        $default, {
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Command value) $default, {
    required TResult Function(_CommandError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Command value)? $default, {
    TResult? Function(_CommandError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Command value)? $default, {
    TResult Function(_CommandError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CommandError implements Command {
  const factory _CommandError(final String message) = _$_CommandError;

  String get message;
  @JsonKey(ignore: true)
  _$$_CommandErrorCopyWith<_$_CommandError> get copyWith =>
      throw _privateConstructorUsedError;
}
