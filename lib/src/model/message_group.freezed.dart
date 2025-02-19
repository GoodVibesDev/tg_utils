// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageGroup _$MessageGroupFromJson(Map<String, dynamic> json) {
  return _MessageGroup.fromJson(json);
}

/// @nodoc
mixin _$MessageGroup {
  List<SerializedMessage> get messages => throw _privateConstructorUsedError;
  int get chatId => throw _privateConstructorUsedError;
  int? get failCounter => throw _privateConstructorUsedError;
  int? get priority => throw _privateConstructorUsedError;

  /// Serializes this MessageGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageGroupCopyWith<MessageGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageGroupCopyWith<$Res> {
  factory $MessageGroupCopyWith(
          MessageGroup value, $Res Function(MessageGroup) then) =
      _$MessageGroupCopyWithImpl<$Res, MessageGroup>;
  @useResult
  $Res call(
      {List<SerializedMessage> messages,
      int chatId,
      int? failCounter,
      int? priority});
}

/// @nodoc
class _$MessageGroupCopyWithImpl<$Res, $Val extends MessageGroup>
    implements $MessageGroupCopyWith<$Res> {
  _$MessageGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? chatId = null,
    Object? failCounter = freezed,
    Object? priority = freezed,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<SerializedMessage>,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      failCounter: freezed == failCounter
          ? _value.failCounter
          : failCounter // ignore: cast_nullable_to_non_nullable
              as int?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageGroupImplCopyWith<$Res>
    implements $MessageGroupCopyWith<$Res> {
  factory _$$MessageGroupImplCopyWith(
          _$MessageGroupImpl value, $Res Function(_$MessageGroupImpl) then) =
      __$$MessageGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SerializedMessage> messages,
      int chatId,
      int? failCounter,
      int? priority});
}

/// @nodoc
class __$$MessageGroupImplCopyWithImpl<$Res>
    extends _$MessageGroupCopyWithImpl<$Res, _$MessageGroupImpl>
    implements _$$MessageGroupImplCopyWith<$Res> {
  __$$MessageGroupImplCopyWithImpl(
      _$MessageGroupImpl _value, $Res Function(_$MessageGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? chatId = null,
    Object? failCounter = freezed,
    Object? priority = freezed,
  }) {
    return _then(_$MessageGroupImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<SerializedMessage>,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      failCounter: freezed == failCounter
          ? _value.failCounter
          : failCounter // ignore: cast_nullable_to_non_nullable
              as int?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageGroupImpl implements _MessageGroup {
  const _$MessageGroupImpl(
      {required final List<SerializedMessage> messages,
      required this.chatId,
      this.failCounter,
      this.priority})
      : _messages = messages;

  factory _$MessageGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageGroupImplFromJson(json);

  final List<SerializedMessage> _messages;
  @override
  List<SerializedMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final int chatId;
  @override
  final int? failCounter;
  @override
  final int? priority;

  @override
  String toString() {
    return 'MessageGroup(messages: $messages, chatId: $chatId, failCounter: $failCounter, priority: $priority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageGroupImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.failCounter, failCounter) ||
                other.failCounter == failCounter) &&
            (identical(other.priority, priority) ||
                other.priority == priority));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_messages),
      chatId,
      failCounter,
      priority);

  /// Create a copy of MessageGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageGroupImplCopyWith<_$MessageGroupImpl> get copyWith =>
      __$$MessageGroupImplCopyWithImpl<_$MessageGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageGroupImplToJson(
      this,
    );
  }
}

abstract class _MessageGroup implements MessageGroup {
  const factory _MessageGroup(
      {required final List<SerializedMessage> messages,
      required final int chatId,
      final int? failCounter,
      final int? priority}) = _$MessageGroupImpl;

  factory _MessageGroup.fromJson(Map<String, dynamic> json) =
      _$MessageGroupImpl.fromJson;

  @override
  List<SerializedMessage> get messages;
  @override
  int get chatId;
  @override
  int? get failCounter;
  @override
  int? get priority;

  /// Create a copy of MessageGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageGroupImplCopyWith<_$MessageGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
