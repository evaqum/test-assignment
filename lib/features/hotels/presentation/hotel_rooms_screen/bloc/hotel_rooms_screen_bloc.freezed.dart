// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_rooms_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HotelRoomsScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() roomsFetchRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? roomsFetchRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? roomsFetchRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomsFetchRequested value) roomsFetchRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomsFetchRequested value)? roomsFetchRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomsFetchRequested value)? roomsFetchRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelRoomsScreenEventCopyWith<$Res> {
  factory $HotelRoomsScreenEventCopyWith(HotelRoomsScreenEvent value,
          $Res Function(HotelRoomsScreenEvent) then) =
      _$HotelRoomsScreenEventCopyWithImpl<$Res, HotelRoomsScreenEvent>;
}

/// @nodoc
class _$HotelRoomsScreenEventCopyWithImpl<$Res,
        $Val extends HotelRoomsScreenEvent>
    implements $HotelRoomsScreenEventCopyWith<$Res> {
  _$HotelRoomsScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RoomsFetchRequestedImplCopyWith<$Res> {
  factory _$$RoomsFetchRequestedImplCopyWith(_$RoomsFetchRequestedImpl value,
          $Res Function(_$RoomsFetchRequestedImpl) then) =
      __$$RoomsFetchRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomsFetchRequestedImplCopyWithImpl<$Res>
    extends _$HotelRoomsScreenEventCopyWithImpl<$Res, _$RoomsFetchRequestedImpl>
    implements _$$RoomsFetchRequestedImplCopyWith<$Res> {
  __$$RoomsFetchRequestedImplCopyWithImpl(_$RoomsFetchRequestedImpl _value,
      $Res Function(_$RoomsFetchRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RoomsFetchRequestedImpl implements _RoomsFetchRequested {
  const _$RoomsFetchRequestedImpl();

  @override
  String toString() {
    return 'HotelRoomsScreenEvent.roomsFetchRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomsFetchRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() roomsFetchRequested,
  }) {
    return roomsFetchRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? roomsFetchRequested,
  }) {
    return roomsFetchRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? roomsFetchRequested,
    required TResult orElse(),
  }) {
    if (roomsFetchRequested != null) {
      return roomsFetchRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoomsFetchRequested value) roomsFetchRequested,
  }) {
    return roomsFetchRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoomsFetchRequested value)? roomsFetchRequested,
  }) {
    return roomsFetchRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoomsFetchRequested value)? roomsFetchRequested,
    required TResult orElse(),
  }) {
    if (roomsFetchRequested != null) {
      return roomsFetchRequested(this);
    }
    return orElse();
  }
}

abstract class _RoomsFetchRequested implements HotelRoomsScreenEvent {
  const factory _RoomsFetchRequested() = _$RoomsFetchRequestedImpl;
}

/// @nodoc
mixin _$HotelRoomsScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<HotelRoomModel> rooms) hotelRoomsFetched,
    required TResult Function() hotelRoomsFetchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<HotelRoomModel> rooms)? hotelRoomsFetched,
    TResult? Function()? hotelRoomsFetchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<HotelRoomModel> rooms)? hotelRoomsFetched,
    TResult Function()? hotelRoomsFetchFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HotelRoomsScreenStateLoading value) loading,
    required TResult Function(HotelRoomsScreenStateFetched value)
        hotelRoomsFetched,
    required TResult Function(HotelRoomsScreenStateFetchFailed value)
        hotelRoomsFetchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HotelRoomsScreenStateLoading value)? loading,
    TResult? Function(HotelRoomsScreenStateFetched value)? hotelRoomsFetched,
    TResult? Function(HotelRoomsScreenStateFetchFailed value)?
        hotelRoomsFetchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HotelRoomsScreenStateLoading value)? loading,
    TResult Function(HotelRoomsScreenStateFetched value)? hotelRoomsFetched,
    TResult Function(HotelRoomsScreenStateFetchFailed value)?
        hotelRoomsFetchFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelRoomsScreenStateCopyWith<$Res> {
  factory $HotelRoomsScreenStateCopyWith(HotelRoomsScreenState value,
          $Res Function(HotelRoomsScreenState) then) =
      _$HotelRoomsScreenStateCopyWithImpl<$Res, HotelRoomsScreenState>;
}

/// @nodoc
class _$HotelRoomsScreenStateCopyWithImpl<$Res,
        $Val extends HotelRoomsScreenState>
    implements $HotelRoomsScreenStateCopyWith<$Res> {
  _$HotelRoomsScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HotelRoomsScreenStateLoadingImplCopyWith<$Res> {
  factory _$$HotelRoomsScreenStateLoadingImplCopyWith(
          _$HotelRoomsScreenStateLoadingImpl value,
          $Res Function(_$HotelRoomsScreenStateLoadingImpl) then) =
      __$$HotelRoomsScreenStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HotelRoomsScreenStateLoadingImplCopyWithImpl<$Res>
    extends _$HotelRoomsScreenStateCopyWithImpl<$Res,
        _$HotelRoomsScreenStateLoadingImpl>
    implements _$$HotelRoomsScreenStateLoadingImplCopyWith<$Res> {
  __$$HotelRoomsScreenStateLoadingImplCopyWithImpl(
      _$HotelRoomsScreenStateLoadingImpl _value,
      $Res Function(_$HotelRoomsScreenStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HotelRoomsScreenStateLoadingImpl
    implements HotelRoomsScreenStateLoading {
  const _$HotelRoomsScreenStateLoadingImpl();

  @override
  String toString() {
    return 'HotelRoomsScreenState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelRoomsScreenStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<HotelRoomModel> rooms) hotelRoomsFetched,
    required TResult Function() hotelRoomsFetchFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<HotelRoomModel> rooms)? hotelRoomsFetched,
    TResult? Function()? hotelRoomsFetchFailed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<HotelRoomModel> rooms)? hotelRoomsFetched,
    TResult Function()? hotelRoomsFetchFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HotelRoomsScreenStateLoading value) loading,
    required TResult Function(HotelRoomsScreenStateFetched value)
        hotelRoomsFetched,
    required TResult Function(HotelRoomsScreenStateFetchFailed value)
        hotelRoomsFetchFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HotelRoomsScreenStateLoading value)? loading,
    TResult? Function(HotelRoomsScreenStateFetched value)? hotelRoomsFetched,
    TResult? Function(HotelRoomsScreenStateFetchFailed value)?
        hotelRoomsFetchFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HotelRoomsScreenStateLoading value)? loading,
    TResult Function(HotelRoomsScreenStateFetched value)? hotelRoomsFetched,
    TResult Function(HotelRoomsScreenStateFetchFailed value)?
        hotelRoomsFetchFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HotelRoomsScreenStateLoading implements HotelRoomsScreenState {
  const factory HotelRoomsScreenStateLoading() =
      _$HotelRoomsScreenStateLoadingImpl;
}

/// @nodoc
abstract class _$$HotelRoomsScreenStateFetchedImplCopyWith<$Res> {
  factory _$$HotelRoomsScreenStateFetchedImplCopyWith(
          _$HotelRoomsScreenStateFetchedImpl value,
          $Res Function(_$HotelRoomsScreenStateFetchedImpl) then) =
      __$$HotelRoomsScreenStateFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HotelRoomModel> rooms});
}

/// @nodoc
class __$$HotelRoomsScreenStateFetchedImplCopyWithImpl<$Res>
    extends _$HotelRoomsScreenStateCopyWithImpl<$Res,
        _$HotelRoomsScreenStateFetchedImpl>
    implements _$$HotelRoomsScreenStateFetchedImplCopyWith<$Res> {
  __$$HotelRoomsScreenStateFetchedImplCopyWithImpl(
      _$HotelRoomsScreenStateFetchedImpl _value,
      $Res Function(_$HotelRoomsScreenStateFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_$HotelRoomsScreenStateFetchedImpl(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<HotelRoomModel>,
    ));
  }
}

/// @nodoc

class _$HotelRoomsScreenStateFetchedImpl
    implements HotelRoomsScreenStateFetched {
  const _$HotelRoomsScreenStateFetchedImpl(
      {required final List<HotelRoomModel> rooms})
      : _rooms = rooms;

  final List<HotelRoomModel> _rooms;
  @override
  List<HotelRoomModel> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'HotelRoomsScreenState.hotelRoomsFetched(rooms: $rooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelRoomsScreenStateFetchedImpl &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelRoomsScreenStateFetchedImplCopyWith<
          _$HotelRoomsScreenStateFetchedImpl>
      get copyWith => __$$HotelRoomsScreenStateFetchedImplCopyWithImpl<
          _$HotelRoomsScreenStateFetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<HotelRoomModel> rooms) hotelRoomsFetched,
    required TResult Function() hotelRoomsFetchFailed,
  }) {
    return hotelRoomsFetched(rooms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<HotelRoomModel> rooms)? hotelRoomsFetched,
    TResult? Function()? hotelRoomsFetchFailed,
  }) {
    return hotelRoomsFetched?.call(rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<HotelRoomModel> rooms)? hotelRoomsFetched,
    TResult Function()? hotelRoomsFetchFailed,
    required TResult orElse(),
  }) {
    if (hotelRoomsFetched != null) {
      return hotelRoomsFetched(rooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HotelRoomsScreenStateLoading value) loading,
    required TResult Function(HotelRoomsScreenStateFetched value)
        hotelRoomsFetched,
    required TResult Function(HotelRoomsScreenStateFetchFailed value)
        hotelRoomsFetchFailed,
  }) {
    return hotelRoomsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HotelRoomsScreenStateLoading value)? loading,
    TResult? Function(HotelRoomsScreenStateFetched value)? hotelRoomsFetched,
    TResult? Function(HotelRoomsScreenStateFetchFailed value)?
        hotelRoomsFetchFailed,
  }) {
    return hotelRoomsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HotelRoomsScreenStateLoading value)? loading,
    TResult Function(HotelRoomsScreenStateFetched value)? hotelRoomsFetched,
    TResult Function(HotelRoomsScreenStateFetchFailed value)?
        hotelRoomsFetchFailed,
    required TResult orElse(),
  }) {
    if (hotelRoomsFetched != null) {
      return hotelRoomsFetched(this);
    }
    return orElse();
  }
}

abstract class HotelRoomsScreenStateFetched implements HotelRoomsScreenState {
  const factory HotelRoomsScreenStateFetched(
          {required final List<HotelRoomModel> rooms}) =
      _$HotelRoomsScreenStateFetchedImpl;

  List<HotelRoomModel> get rooms;
  @JsonKey(ignore: true)
  _$$HotelRoomsScreenStateFetchedImplCopyWith<
          _$HotelRoomsScreenStateFetchedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HotelRoomsScreenStateFetchFailedImplCopyWith<$Res> {
  factory _$$HotelRoomsScreenStateFetchFailedImplCopyWith(
          _$HotelRoomsScreenStateFetchFailedImpl value,
          $Res Function(_$HotelRoomsScreenStateFetchFailedImpl) then) =
      __$$HotelRoomsScreenStateFetchFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HotelRoomsScreenStateFetchFailedImplCopyWithImpl<$Res>
    extends _$HotelRoomsScreenStateCopyWithImpl<$Res,
        _$HotelRoomsScreenStateFetchFailedImpl>
    implements _$$HotelRoomsScreenStateFetchFailedImplCopyWith<$Res> {
  __$$HotelRoomsScreenStateFetchFailedImplCopyWithImpl(
      _$HotelRoomsScreenStateFetchFailedImpl _value,
      $Res Function(_$HotelRoomsScreenStateFetchFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HotelRoomsScreenStateFetchFailedImpl
    implements HotelRoomsScreenStateFetchFailed {
  const _$HotelRoomsScreenStateFetchFailedImpl();

  @override
  String toString() {
    return 'HotelRoomsScreenState.hotelRoomsFetchFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelRoomsScreenStateFetchFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<HotelRoomModel> rooms) hotelRoomsFetched,
    required TResult Function() hotelRoomsFetchFailed,
  }) {
    return hotelRoomsFetchFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<HotelRoomModel> rooms)? hotelRoomsFetched,
    TResult? Function()? hotelRoomsFetchFailed,
  }) {
    return hotelRoomsFetchFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<HotelRoomModel> rooms)? hotelRoomsFetched,
    TResult Function()? hotelRoomsFetchFailed,
    required TResult orElse(),
  }) {
    if (hotelRoomsFetchFailed != null) {
      return hotelRoomsFetchFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HotelRoomsScreenStateLoading value) loading,
    required TResult Function(HotelRoomsScreenStateFetched value)
        hotelRoomsFetched,
    required TResult Function(HotelRoomsScreenStateFetchFailed value)
        hotelRoomsFetchFailed,
  }) {
    return hotelRoomsFetchFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HotelRoomsScreenStateLoading value)? loading,
    TResult? Function(HotelRoomsScreenStateFetched value)? hotelRoomsFetched,
    TResult? Function(HotelRoomsScreenStateFetchFailed value)?
        hotelRoomsFetchFailed,
  }) {
    return hotelRoomsFetchFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HotelRoomsScreenStateLoading value)? loading,
    TResult Function(HotelRoomsScreenStateFetched value)? hotelRoomsFetched,
    TResult Function(HotelRoomsScreenStateFetchFailed value)?
        hotelRoomsFetchFailed,
    required TResult orElse(),
  }) {
    if (hotelRoomsFetchFailed != null) {
      return hotelRoomsFetchFailed(this);
    }
    return orElse();
  }
}

abstract class HotelRoomsScreenStateFetchFailed
    implements HotelRoomsScreenState {
  const factory HotelRoomsScreenStateFetchFailed() =
      _$HotelRoomsScreenStateFetchFailedImpl;
}
