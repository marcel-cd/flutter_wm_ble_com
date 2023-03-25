// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Message {
  Uint8List get buffer => throw _privateConstructorUsedError;
  int get messageId => throw _privateConstructorUsedError;
  MessageState get state => throw _privateConstructorUsedError;
  int get timeoutMs => throw _privateConstructorUsedError;
  String get commandName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {Uint8List buffer,
      int messageId,
      MessageState state,
      int timeoutMs,
      String commandName});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buffer = null,
    Object? messageId = null,
    Object? state = null,
    Object? timeoutMs = null,
    Object? commandName = null,
  }) {
    return _then(_value.copyWith(
      buffer: null == buffer
          ? _value.buffer
          : buffer // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as MessageState,
      timeoutMs: null == timeoutMs
          ? _value.timeoutMs
          : timeoutMs // ignore: cast_nullable_to_non_nullable
              as int,
      commandName: null == commandName
          ? _value.commandName
          : commandName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uint8List buffer,
      int messageId,
      MessageState state,
      int timeoutMs,
      String commandName});
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$_Message>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buffer = null,
    Object? messageId = null,
    Object? state = null,
    Object? timeoutMs = null,
    Object? commandName = null,
  }) {
    return _then(_$_Message(
      buffer: null == buffer
          ? _value.buffer
          : buffer // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as MessageState,
      timeoutMs: null == timeoutMs
          ? _value.timeoutMs
          : timeoutMs // ignore: cast_nullable_to_non_nullable
              as int,
      commandName: null == commandName
          ? _value.commandName
          : commandName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Message with DiagnosticableTreeMixin implements _Message {
  const _$_Message(
      {required this.buffer,
      required this.messageId,
      required this.state,
      required this.timeoutMs,
      required this.commandName});

  @override
  final Uint8List buffer;
  @override
  final int messageId;
  @override
  final MessageState state;
  @override
  final int timeoutMs;
  @override
  final String commandName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Message(buffer: $buffer, messageId: $messageId, state: $state, timeoutMs: $timeoutMs, commandName: $commandName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Message'))
      ..add(DiagnosticsProperty('buffer', buffer))
      ..add(DiagnosticsProperty('messageId', messageId))
      ..add(DiagnosticsProperty('state', state))
      ..add(DiagnosticsProperty('timeoutMs', timeoutMs))
      ..add(DiagnosticsProperty('commandName', commandName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
            const DeepCollectionEquality().equals(other.buffer, buffer) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.timeoutMs, timeoutMs) ||
                other.timeoutMs == timeoutMs) &&
            (identical(other.commandName, commandName) ||
                other.commandName == commandName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(buffer),
      messageId,
      state,
      timeoutMs,
      commandName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);
}

abstract class _Message implements Message {
  const factory _Message(
      {required final Uint8List buffer,
      required final int messageId,
      required final MessageState state,
      required final int timeoutMs,
      required final String commandName}) = _$_Message;

  @override
  Uint8List get buffer;
  @override
  int get messageId;
  @override
  MessageState get state;
  @override
  int get timeoutMs;
  @override
  String get commandName;
  @override
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}
