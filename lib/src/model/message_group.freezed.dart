// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageGroup {
  List<SerializedMessage> get messages;
  int get chatId;
  int? get failCounter;
  int? get priority;

  /// Create a copy of MessageGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageGroupCopyWith<MessageGroup> get copyWith =>
      _$MessageGroupCopyWithImpl<MessageGroup>(
          this as MessageGroup, _$identity);

  /// Serializes this MessageGroup to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessageGroup &&
            const DeepCollectionEquality().equals(other.messages, messages) &&
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
      const DeepCollectionEquality().hash(messages),
      chatId,
      failCounter,
      priority);

  @override
  String toString() {
    return 'MessageGroup(messages: $messages, chatId: $chatId, failCounter: $failCounter, priority: $priority)';
  }
}

/// @nodoc
abstract mixin class $MessageGroupCopyWith<$Res> {
  factory $MessageGroupCopyWith(
          MessageGroup value, $Res Function(MessageGroup) _then) =
      _$MessageGroupCopyWithImpl;
  @useResult
  $Res call(
      {List<SerializedMessage> messages,
      int chatId,
      int? failCounter,
      int? priority});
}

/// @nodoc
class _$MessageGroupCopyWithImpl<$Res> implements $MessageGroupCopyWith<$Res> {
  _$MessageGroupCopyWithImpl(this._self, this._then);

  final MessageGroup _self;
  final $Res Function(MessageGroup) _then;

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
    return _then(_self.copyWith(
      messages: null == messages
          ? _self.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<SerializedMessage>,
      chatId: null == chatId
          ? _self.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      failCounter: freezed == failCounter
          ? _self.failCounter
          : failCounter // ignore: cast_nullable_to_non_nullable
              as int?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MessageGroup implements MessageGroup {
  const _MessageGroup(
      {required final List<SerializedMessage> messages,
      required this.chatId,
      this.failCounter,
      this.priority})
      : _messages = messages;
  factory _MessageGroup.fromJson(Map<String, dynamic> json) =>
      _$MessageGroupFromJson(json);

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

  /// Create a copy of MessageGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MessageGroupCopyWith<_MessageGroup> get copyWith =>
      __$MessageGroupCopyWithImpl<_MessageGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MessageGroupToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageGroup &&
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

  @override
  String toString() {
    return 'MessageGroup(messages: $messages, chatId: $chatId, failCounter: $failCounter, priority: $priority)';
  }
}

/// @nodoc
abstract mixin class _$MessageGroupCopyWith<$Res>
    implements $MessageGroupCopyWith<$Res> {
  factory _$MessageGroupCopyWith(
          _MessageGroup value, $Res Function(_MessageGroup) _then) =
      __$MessageGroupCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<SerializedMessage> messages,
      int chatId,
      int? failCounter,
      int? priority});
}

/// @nodoc
class __$MessageGroupCopyWithImpl<$Res>
    implements _$MessageGroupCopyWith<$Res> {
  __$MessageGroupCopyWithImpl(this._self, this._then);

  final _MessageGroup _self;
  final $Res Function(_MessageGroup) _then;

  /// Create a copy of MessageGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? messages = null,
    Object? chatId = null,
    Object? failCounter = freezed,
    Object? priority = freezed,
  }) {
    return _then(_MessageGroup(
      messages: null == messages
          ? _self._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<SerializedMessage>,
      chatId: null == chatId
          ? _self.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      failCounter: freezed == failCounter
          ? _self.failCounter
          : failCounter // ignore: cast_nullable_to_non_nullable
              as int?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
