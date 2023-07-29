// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingChats,
    required TResult Function(List<BaseMessage> messages) loadedChats,
    required TResult Function(List<GroupChannel> channels) loadedChatChannels,
    required TResult Function(bool hasUnreadMessages, int unreadMessageCount)
        hasUnreadMessages,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingChats,
    TResult? Function(List<BaseMessage> messages)? loadedChats,
    TResult? Function(List<GroupChannel> channels)? loadedChatChannels,
    TResult? Function(bool hasUnreadMessages, int unreadMessageCount)?
        hasUnreadMessages,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingChats,
    TResult Function(List<BaseMessage> messages)? loadedChats,
    TResult Function(List<GroupChannel> channels)? loadedChatChannels,
    TResult Function(bool hasUnreadMessages, int unreadMessageCount)?
        hasUnreadMessages,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChatsLoading value) loadingChats,
    required TResult Function(ChatsLoaded value) loadedChats,
    required TResult Function(ChatChannelsLoaded value) loadedChatChannels,
    required TResult Function(HasUnreadMessages value) hasUnreadMessages,
    required TResult Function(ChatsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChatsLoading value)? loadingChats,
    TResult? Function(ChatsLoaded value)? loadedChats,
    TResult? Function(ChatChannelsLoaded value)? loadedChatChannels,
    TResult? Function(HasUnreadMessages value)? hasUnreadMessages,
    TResult? Function(ChatsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChatsLoading value)? loadingChats,
    TResult Function(ChatsLoaded value)? loadedChats,
    TResult Function(ChatChannelsLoaded value)? loadedChatChannels,
    TResult Function(HasUnreadMessages value)? hasUnreadMessages,
    TResult Function(ChatsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ChatState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingChats,
    required TResult Function(List<BaseMessage> messages) loadedChats,
    required TResult Function(List<GroupChannel> channels) loadedChatChannels,
    required TResult Function(bool hasUnreadMessages, int unreadMessageCount)
        hasUnreadMessages,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingChats,
    TResult? Function(List<BaseMessage> messages)? loadedChats,
    TResult? Function(List<GroupChannel> channels)? loadedChatChannels,
    TResult? Function(bool hasUnreadMessages, int unreadMessageCount)?
        hasUnreadMessages,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingChats,
    TResult Function(List<BaseMessage> messages)? loadedChats,
    TResult Function(List<GroupChannel> channels)? loadedChatChannels,
    TResult Function(bool hasUnreadMessages, int unreadMessageCount)?
        hasUnreadMessages,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChatsLoading value) loadingChats,
    required TResult Function(ChatsLoaded value) loadedChats,
    required TResult Function(ChatChannelsLoaded value) loadedChatChannels,
    required TResult Function(HasUnreadMessages value) hasUnreadMessages,
    required TResult Function(ChatsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChatsLoading value)? loadingChats,
    TResult? Function(ChatsLoaded value)? loadedChats,
    TResult? Function(ChatChannelsLoaded value)? loadedChatChannels,
    TResult? Function(HasUnreadMessages value)? hasUnreadMessages,
    TResult? Function(ChatsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChatsLoading value)? loadingChats,
    TResult Function(ChatsLoaded value)? loadedChats,
    TResult Function(ChatChannelsLoaded value)? loadedChatChannels,
    TResult Function(HasUnreadMessages value)? hasUnreadMessages,
    TResult Function(ChatsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$ChatsLoadingCopyWith<$Res> {
  factory _$$ChatsLoadingCopyWith(
          _$ChatsLoading value, $Res Function(_$ChatsLoading) then) =
      __$$ChatsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatsLoadingCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatsLoading>
    implements _$$ChatsLoadingCopyWith<$Res> {
  __$$ChatsLoadingCopyWithImpl(
      _$ChatsLoading _value, $Res Function(_$ChatsLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatsLoading implements ChatsLoading {
  const _$ChatsLoading();

  @override
  String toString() {
    return 'ChatState.loadingChats()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingChats,
    required TResult Function(List<BaseMessage> messages) loadedChats,
    required TResult Function(List<GroupChannel> channels) loadedChatChannels,
    required TResult Function(bool hasUnreadMessages, int unreadMessageCount)
        hasUnreadMessages,
    required TResult Function(String errorMessage) error,
  }) {
    return loadingChats();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingChats,
    TResult? Function(List<BaseMessage> messages)? loadedChats,
    TResult? Function(List<GroupChannel> channels)? loadedChatChannels,
    TResult? Function(bool hasUnreadMessages, int unreadMessageCount)?
        hasUnreadMessages,
    TResult? Function(String errorMessage)? error,
  }) {
    return loadingChats?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingChats,
    TResult Function(List<BaseMessage> messages)? loadedChats,
    TResult Function(List<GroupChannel> channels)? loadedChatChannels,
    TResult Function(bool hasUnreadMessages, int unreadMessageCount)?
        hasUnreadMessages,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loadingChats != null) {
      return loadingChats();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChatsLoading value) loadingChats,
    required TResult Function(ChatsLoaded value) loadedChats,
    required TResult Function(ChatChannelsLoaded value) loadedChatChannels,
    required TResult Function(HasUnreadMessages value) hasUnreadMessages,
    required TResult Function(ChatsError value) error,
  }) {
    return loadingChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChatsLoading value)? loadingChats,
    TResult? Function(ChatsLoaded value)? loadedChats,
    TResult? Function(ChatChannelsLoaded value)? loadedChatChannels,
    TResult? Function(HasUnreadMessages value)? hasUnreadMessages,
    TResult? Function(ChatsError value)? error,
  }) {
    return loadingChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChatsLoading value)? loadingChats,
    TResult Function(ChatsLoaded value)? loadedChats,
    TResult Function(ChatChannelsLoaded value)? loadedChatChannels,
    TResult Function(HasUnreadMessages value)? hasUnreadMessages,
    TResult Function(ChatsError value)? error,
    required TResult orElse(),
  }) {
    if (loadingChats != null) {
      return loadingChats(this);
    }
    return orElse();
  }
}

abstract class ChatsLoading implements ChatState {
  const factory ChatsLoading() = _$ChatsLoading;
}

/// @nodoc
abstract class _$$ChatsLoadedCopyWith<$Res> {
  factory _$$ChatsLoadedCopyWith(
          _$ChatsLoaded value, $Res Function(_$ChatsLoaded) then) =
      __$$ChatsLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BaseMessage> messages});
}

/// @nodoc
class __$$ChatsLoadedCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatsLoaded>
    implements _$$ChatsLoadedCopyWith<$Res> {
  __$$ChatsLoadedCopyWithImpl(
      _$ChatsLoaded _value, $Res Function(_$ChatsLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$ChatsLoaded(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<BaseMessage>,
    ));
  }
}

/// @nodoc

class _$ChatsLoaded implements ChatsLoaded {
  const _$ChatsLoaded(final List<BaseMessage> messages) : _messages = messages;

  final List<BaseMessage> _messages;
  @override
  List<BaseMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatState.loadedChats(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatsLoaded &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatsLoadedCopyWith<_$ChatsLoaded> get copyWith =>
      __$$ChatsLoadedCopyWithImpl<_$ChatsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingChats,
    required TResult Function(List<BaseMessage> messages) loadedChats,
    required TResult Function(List<GroupChannel> channels) loadedChatChannels,
    required TResult Function(bool hasUnreadMessages, int unreadMessageCount)
        hasUnreadMessages,
    required TResult Function(String errorMessage) error,
  }) {
    return loadedChats(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingChats,
    TResult? Function(List<BaseMessage> messages)? loadedChats,
    TResult? Function(List<GroupChannel> channels)? loadedChatChannels,
    TResult? Function(bool hasUnreadMessages, int unreadMessageCount)?
        hasUnreadMessages,
    TResult? Function(String errorMessage)? error,
  }) {
    return loadedChats?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingChats,
    TResult Function(List<BaseMessage> messages)? loadedChats,
    TResult Function(List<GroupChannel> channels)? loadedChatChannels,
    TResult Function(bool hasUnreadMessages, int unreadMessageCount)?
        hasUnreadMessages,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loadedChats != null) {
      return loadedChats(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChatsLoading value) loadingChats,
    required TResult Function(ChatsLoaded value) loadedChats,
    required TResult Function(ChatChannelsLoaded value) loadedChatChannels,
    required TResult Function(HasUnreadMessages value) hasUnreadMessages,
    required TResult Function(ChatsError value) error,
  }) {
    return loadedChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChatsLoading value)? loadingChats,
    TResult? Function(ChatsLoaded value)? loadedChats,
    TResult? Function(ChatChannelsLoaded value)? loadedChatChannels,
    TResult? Function(HasUnreadMessages value)? hasUnreadMessages,
    TResult? Function(ChatsError value)? error,
  }) {
    return loadedChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChatsLoading value)? loadingChats,
    TResult Function(ChatsLoaded value)? loadedChats,
    TResult Function(ChatChannelsLoaded value)? loadedChatChannels,
    TResult Function(HasUnreadMessages value)? hasUnreadMessages,
    TResult Function(ChatsError value)? error,
    required TResult orElse(),
  }) {
    if (loadedChats != null) {
      return loadedChats(this);
    }
    return orElse();
  }
}

abstract class ChatsLoaded implements ChatState {
  const factory ChatsLoaded(final List<BaseMessage> messages) = _$ChatsLoaded;

  List<BaseMessage> get messages;
  @JsonKey(ignore: true)
  _$$ChatsLoadedCopyWith<_$ChatsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatChannelsLoadedCopyWith<$Res> {
  factory _$$ChatChannelsLoadedCopyWith(_$ChatChannelsLoaded value,
          $Res Function(_$ChatChannelsLoaded) then) =
      __$$ChatChannelsLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GroupChannel> channels});
}

/// @nodoc
class __$$ChatChannelsLoadedCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatChannelsLoaded>
    implements _$$ChatChannelsLoadedCopyWith<$Res> {
  __$$ChatChannelsLoadedCopyWithImpl(
      _$ChatChannelsLoaded _value, $Res Function(_$ChatChannelsLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channels = null,
  }) {
    return _then(_$ChatChannelsLoaded(
      null == channels
          ? _value._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<GroupChannel>,
    ));
  }
}

/// @nodoc

class _$ChatChannelsLoaded implements ChatChannelsLoaded {
  const _$ChatChannelsLoaded(final List<GroupChannel> channels)
      : _channels = channels;

  final List<GroupChannel> _channels;
  @override
  List<GroupChannel> get channels {
    if (_channels is EqualUnmodifiableListView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channels);
  }

  @override
  String toString() {
    return 'ChatState.loadedChatChannels(channels: $channels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatChannelsLoaded &&
            const DeepCollectionEquality().equals(other._channels, _channels));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_channels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatChannelsLoadedCopyWith<_$ChatChannelsLoaded> get copyWith =>
      __$$ChatChannelsLoadedCopyWithImpl<_$ChatChannelsLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingChats,
    required TResult Function(List<BaseMessage> messages) loadedChats,
    required TResult Function(List<GroupChannel> channels) loadedChatChannels,
    required TResult Function(bool hasUnreadMessages, int unreadMessageCount)
        hasUnreadMessages,
    required TResult Function(String errorMessage) error,
  }) {
    return loadedChatChannels(channels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingChats,
    TResult? Function(List<BaseMessage> messages)? loadedChats,
    TResult? Function(List<GroupChannel> channels)? loadedChatChannels,
    TResult? Function(bool hasUnreadMessages, int unreadMessageCount)?
        hasUnreadMessages,
    TResult? Function(String errorMessage)? error,
  }) {
    return loadedChatChannels?.call(channels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingChats,
    TResult Function(List<BaseMessage> messages)? loadedChats,
    TResult Function(List<GroupChannel> channels)? loadedChatChannels,
    TResult Function(bool hasUnreadMessages, int unreadMessageCount)?
        hasUnreadMessages,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loadedChatChannels != null) {
      return loadedChatChannels(channels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChatsLoading value) loadingChats,
    required TResult Function(ChatsLoaded value) loadedChats,
    required TResult Function(ChatChannelsLoaded value) loadedChatChannels,
    required TResult Function(HasUnreadMessages value) hasUnreadMessages,
    required TResult Function(ChatsError value) error,
  }) {
    return loadedChatChannels(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChatsLoading value)? loadingChats,
    TResult? Function(ChatsLoaded value)? loadedChats,
    TResult? Function(ChatChannelsLoaded value)? loadedChatChannels,
    TResult? Function(HasUnreadMessages value)? hasUnreadMessages,
    TResult? Function(ChatsError value)? error,
  }) {
    return loadedChatChannels?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChatsLoading value)? loadingChats,
    TResult Function(ChatsLoaded value)? loadedChats,
    TResult Function(ChatChannelsLoaded value)? loadedChatChannels,
    TResult Function(HasUnreadMessages value)? hasUnreadMessages,
    TResult Function(ChatsError value)? error,
    required TResult orElse(),
  }) {
    if (loadedChatChannels != null) {
      return loadedChatChannels(this);
    }
    return orElse();
  }
}

abstract class ChatChannelsLoaded implements ChatState {
  const factory ChatChannelsLoaded(final List<GroupChannel> channels) =
      _$ChatChannelsLoaded;

  List<GroupChannel> get channels;
  @JsonKey(ignore: true)
  _$$ChatChannelsLoadedCopyWith<_$ChatChannelsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HasUnreadMessagesCopyWith<$Res> {
  factory _$$HasUnreadMessagesCopyWith(
          _$HasUnreadMessages value, $Res Function(_$HasUnreadMessages) then) =
      __$$HasUnreadMessagesCopyWithImpl<$Res>;
  @useResult
  $Res call({bool hasUnreadMessages, int unreadMessageCount});
}

/// @nodoc
class __$$HasUnreadMessagesCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$HasUnreadMessages>
    implements _$$HasUnreadMessagesCopyWith<$Res> {
  __$$HasUnreadMessagesCopyWithImpl(
      _$HasUnreadMessages _value, $Res Function(_$HasUnreadMessages) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasUnreadMessages = null,
    Object? unreadMessageCount = null,
  }) {
    return _then(_$HasUnreadMessages(
      null == hasUnreadMessages
          ? _value.hasUnreadMessages
          : hasUnreadMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      null == unreadMessageCount
          ? _value.unreadMessageCount
          : unreadMessageCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HasUnreadMessages implements HasUnreadMessages {
  const _$HasUnreadMessages(this.hasUnreadMessages, this.unreadMessageCount);

  @override
  final bool hasUnreadMessages;
  @override
  final int unreadMessageCount;

  @override
  String toString() {
    return 'ChatState.hasUnreadMessages(hasUnreadMessages: $hasUnreadMessages, unreadMessageCount: $unreadMessageCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HasUnreadMessages &&
            (identical(other.hasUnreadMessages, hasUnreadMessages) ||
                other.hasUnreadMessages == hasUnreadMessages) &&
            (identical(other.unreadMessageCount, unreadMessageCount) ||
                other.unreadMessageCount == unreadMessageCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, hasUnreadMessages, unreadMessageCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HasUnreadMessagesCopyWith<_$HasUnreadMessages> get copyWith =>
      __$$HasUnreadMessagesCopyWithImpl<_$HasUnreadMessages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingChats,
    required TResult Function(List<BaseMessage> messages) loadedChats,
    required TResult Function(List<GroupChannel> channels) loadedChatChannels,
    required TResult Function(bool hasUnreadMessages, int unreadMessageCount)
        hasUnreadMessages,
    required TResult Function(String errorMessage) error,
  }) {
    return hasUnreadMessages(this.hasUnreadMessages, unreadMessageCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingChats,
    TResult? Function(List<BaseMessage> messages)? loadedChats,
    TResult? Function(List<GroupChannel> channels)? loadedChatChannels,
    TResult? Function(bool hasUnreadMessages, int unreadMessageCount)?
        hasUnreadMessages,
    TResult? Function(String errorMessage)? error,
  }) {
    return hasUnreadMessages?.call(this.hasUnreadMessages, unreadMessageCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingChats,
    TResult Function(List<BaseMessage> messages)? loadedChats,
    TResult Function(List<GroupChannel> channels)? loadedChatChannels,
    TResult Function(bool hasUnreadMessages, int unreadMessageCount)?
        hasUnreadMessages,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (hasUnreadMessages != null) {
      return hasUnreadMessages(this.hasUnreadMessages, unreadMessageCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChatsLoading value) loadingChats,
    required TResult Function(ChatsLoaded value) loadedChats,
    required TResult Function(ChatChannelsLoaded value) loadedChatChannels,
    required TResult Function(HasUnreadMessages value) hasUnreadMessages,
    required TResult Function(ChatsError value) error,
  }) {
    return hasUnreadMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChatsLoading value)? loadingChats,
    TResult? Function(ChatsLoaded value)? loadedChats,
    TResult? Function(ChatChannelsLoaded value)? loadedChatChannels,
    TResult? Function(HasUnreadMessages value)? hasUnreadMessages,
    TResult? Function(ChatsError value)? error,
  }) {
    return hasUnreadMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChatsLoading value)? loadingChats,
    TResult Function(ChatsLoaded value)? loadedChats,
    TResult Function(ChatChannelsLoaded value)? loadedChatChannels,
    TResult Function(HasUnreadMessages value)? hasUnreadMessages,
    TResult Function(ChatsError value)? error,
    required TResult orElse(),
  }) {
    if (hasUnreadMessages != null) {
      return hasUnreadMessages(this);
    }
    return orElse();
  }
}

abstract class HasUnreadMessages implements ChatState {
  const factory HasUnreadMessages(
          final bool hasUnreadMessages, final int unreadMessageCount) =
      _$HasUnreadMessages;

  bool get hasUnreadMessages;
  int get unreadMessageCount;
  @JsonKey(ignore: true)
  _$$HasUnreadMessagesCopyWith<_$HasUnreadMessages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatsErrorCopyWith<$Res> {
  factory _$$ChatsErrorCopyWith(
          _$ChatsError value, $Res Function(_$ChatsError) then) =
      __$$ChatsErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ChatsErrorCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatsError>
    implements _$$ChatsErrorCopyWith<$Res> {
  __$$ChatsErrorCopyWithImpl(
      _$ChatsError _value, $Res Function(_$ChatsError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ChatsError(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatsError implements ChatsError {
  const _$ChatsError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ChatState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatsError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatsErrorCopyWith<_$ChatsError> get copyWith =>
      __$$ChatsErrorCopyWithImpl<_$ChatsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingChats,
    required TResult Function(List<BaseMessage> messages) loadedChats,
    required TResult Function(List<GroupChannel> channels) loadedChatChannels,
    required TResult Function(bool hasUnreadMessages, int unreadMessageCount)
        hasUnreadMessages,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingChats,
    TResult? Function(List<BaseMessage> messages)? loadedChats,
    TResult? Function(List<GroupChannel> channels)? loadedChatChannels,
    TResult? Function(bool hasUnreadMessages, int unreadMessageCount)?
        hasUnreadMessages,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingChats,
    TResult Function(List<BaseMessage> messages)? loadedChats,
    TResult Function(List<GroupChannel> channels)? loadedChatChannels,
    TResult Function(bool hasUnreadMessages, int unreadMessageCount)?
        hasUnreadMessages,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChatsLoading value) loadingChats,
    required TResult Function(ChatsLoaded value) loadedChats,
    required TResult Function(ChatChannelsLoaded value) loadedChatChannels,
    required TResult Function(HasUnreadMessages value) hasUnreadMessages,
    required TResult Function(ChatsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChatsLoading value)? loadingChats,
    TResult? Function(ChatsLoaded value)? loadedChats,
    TResult? Function(ChatChannelsLoaded value)? loadedChatChannels,
    TResult? Function(HasUnreadMessages value)? hasUnreadMessages,
    TResult? Function(ChatsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChatsLoading value)? loadingChats,
    TResult Function(ChatsLoaded value)? loadedChats,
    TResult Function(ChatChannelsLoaded value)? loadedChatChannels,
    TResult Function(HasUnreadMessages value)? hasUnreadMessages,
    TResult Function(ChatsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChatsError implements ChatState {
  const factory ChatsError(final String errorMessage) = _$ChatsError;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ChatsErrorCopyWith<_$ChatsError> get copyWith =>
      throw _privateConstructorUsedError;
}
