// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_book_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomBookInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRequested value) fetchRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRequested value)? fetchRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRequested value)? fetchRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomBookInfoEventCopyWith<$Res> {
  factory $RoomBookInfoEventCopyWith(
          RoomBookInfoEvent value, $Res Function(RoomBookInfoEvent) then) =
      _$RoomBookInfoEventCopyWithImpl<$Res, RoomBookInfoEvent>;
}

/// @nodoc
class _$RoomBookInfoEventCopyWithImpl<$Res, $Val extends RoomBookInfoEvent>
    implements $RoomBookInfoEventCopyWith<$Res> {
  _$RoomBookInfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchRequestedImplCopyWith<$Res> {
  factory _$$FetchRequestedImplCopyWith(_$FetchRequestedImpl value,
          $Res Function(_$FetchRequestedImpl) then) =
      __$$FetchRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchRequestedImplCopyWithImpl<$Res>
    extends _$RoomBookInfoEventCopyWithImpl<$Res, _$FetchRequestedImpl>
    implements _$$FetchRequestedImplCopyWith<$Res> {
  __$$FetchRequestedImplCopyWithImpl(
      _$FetchRequestedImpl _value, $Res Function(_$FetchRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchRequestedImpl implements _FetchRequested {
  const _$FetchRequestedImpl();

  @override
  String toString() {
    return 'RoomBookInfoEvent.fetchRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRequested,
  }) {
    return fetchRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRequested,
  }) {
    return fetchRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRequested,
    required TResult orElse(),
  }) {
    if (fetchRequested != null) {
      return fetchRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRequested value) fetchRequested,
  }) {
    return fetchRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRequested value)? fetchRequested,
  }) {
    return fetchRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRequested value)? fetchRequested,
    required TResult orElse(),
  }) {
    if (fetchRequested != null) {
      return fetchRequested(this);
    }
    return orElse();
  }
}

abstract class _FetchRequested implements RoomBookInfoEvent {
  const factory _FetchRequested() = _$FetchRequestedImpl;
}

/// @nodoc
mixin _$RoomBookInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(RoomBookInfoModel roomBookInfo) loaded,
    required TResult Function() loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(RoomBookInfoModel roomBookInfo)? loaded,
    TResult? Function()? loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(RoomBookInfoModel roomBookInfo)? loaded,
    TResult Function()? loadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomBookInfoStateLoading value) loading,
    required TResult Function(RoomBookInfoStateLoaded value) loaded,
    required TResult Function(RoomBookInfoStateLoadFailed value) loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomBookInfoStateLoading value)? loading,
    TResult? Function(RoomBookInfoStateLoaded value)? loaded,
    TResult? Function(RoomBookInfoStateLoadFailed value)? loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomBookInfoStateLoading value)? loading,
    TResult Function(RoomBookInfoStateLoaded value)? loaded,
    TResult Function(RoomBookInfoStateLoadFailed value)? loadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomBookInfoStateCopyWith<$Res> {
  factory $RoomBookInfoStateCopyWith(
          RoomBookInfoState value, $Res Function(RoomBookInfoState) then) =
      _$RoomBookInfoStateCopyWithImpl<$Res, RoomBookInfoState>;
}

/// @nodoc
class _$RoomBookInfoStateCopyWithImpl<$Res, $Val extends RoomBookInfoState>
    implements $RoomBookInfoStateCopyWith<$Res> {
  _$RoomBookInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RoomBookInfoStateLoadingImplCopyWith<$Res> {
  factory _$$RoomBookInfoStateLoadingImplCopyWith(
          _$RoomBookInfoStateLoadingImpl value,
          $Res Function(_$RoomBookInfoStateLoadingImpl) then) =
      __$$RoomBookInfoStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomBookInfoStateLoadingImplCopyWithImpl<$Res>
    extends _$RoomBookInfoStateCopyWithImpl<$Res,
        _$RoomBookInfoStateLoadingImpl>
    implements _$$RoomBookInfoStateLoadingImplCopyWith<$Res> {
  __$$RoomBookInfoStateLoadingImplCopyWithImpl(
      _$RoomBookInfoStateLoadingImpl _value,
      $Res Function(_$RoomBookInfoStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RoomBookInfoStateLoadingImpl implements RoomBookInfoStateLoading {
  const _$RoomBookInfoStateLoadingImpl();

  @override
  String toString() {
    return 'RoomBookInfoState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomBookInfoStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(RoomBookInfoModel roomBookInfo) loaded,
    required TResult Function() loadFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(RoomBookInfoModel roomBookInfo)? loaded,
    TResult? Function()? loadFailed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(RoomBookInfoModel roomBookInfo)? loaded,
    TResult Function()? loadFailed,
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
    required TResult Function(RoomBookInfoStateLoading value) loading,
    required TResult Function(RoomBookInfoStateLoaded value) loaded,
    required TResult Function(RoomBookInfoStateLoadFailed value) loadFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomBookInfoStateLoading value)? loading,
    TResult? Function(RoomBookInfoStateLoaded value)? loaded,
    TResult? Function(RoomBookInfoStateLoadFailed value)? loadFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomBookInfoStateLoading value)? loading,
    TResult Function(RoomBookInfoStateLoaded value)? loaded,
    TResult Function(RoomBookInfoStateLoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RoomBookInfoStateLoading implements RoomBookInfoState {
  const factory RoomBookInfoStateLoading() = _$RoomBookInfoStateLoadingImpl;
}

/// @nodoc
abstract class _$$RoomBookInfoStateLoadedImplCopyWith<$Res> {
  factory _$$RoomBookInfoStateLoadedImplCopyWith(
          _$RoomBookInfoStateLoadedImpl value,
          $Res Function(_$RoomBookInfoStateLoadedImpl) then) =
      __$$RoomBookInfoStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RoomBookInfoModel roomBookInfo});

  $RoomBookInfoModelCopyWith<$Res> get roomBookInfo;
}

/// @nodoc
class __$$RoomBookInfoStateLoadedImplCopyWithImpl<$Res>
    extends _$RoomBookInfoStateCopyWithImpl<$Res, _$RoomBookInfoStateLoadedImpl>
    implements _$$RoomBookInfoStateLoadedImplCopyWith<$Res> {
  __$$RoomBookInfoStateLoadedImplCopyWithImpl(
      _$RoomBookInfoStateLoadedImpl _value,
      $Res Function(_$RoomBookInfoStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomBookInfo = null,
  }) {
    return _then(_$RoomBookInfoStateLoadedImpl(
      roomBookInfo: null == roomBookInfo
          ? _value.roomBookInfo
          : roomBookInfo // ignore: cast_nullable_to_non_nullable
              as RoomBookInfoModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomBookInfoModelCopyWith<$Res> get roomBookInfo {
    return $RoomBookInfoModelCopyWith<$Res>(_value.roomBookInfo, (value) {
      return _then(_value.copyWith(roomBookInfo: value));
    });
  }
}

/// @nodoc

class _$RoomBookInfoStateLoadedImpl implements RoomBookInfoStateLoaded {
  const _$RoomBookInfoStateLoadedImpl({required this.roomBookInfo});

  @override
  final RoomBookInfoModel roomBookInfo;

  @override
  String toString() {
    return 'RoomBookInfoState.loaded(roomBookInfo: $roomBookInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomBookInfoStateLoadedImpl &&
            (identical(other.roomBookInfo, roomBookInfo) ||
                other.roomBookInfo == roomBookInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomBookInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomBookInfoStateLoadedImplCopyWith<_$RoomBookInfoStateLoadedImpl>
      get copyWith => __$$RoomBookInfoStateLoadedImplCopyWithImpl<
          _$RoomBookInfoStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(RoomBookInfoModel roomBookInfo) loaded,
    required TResult Function() loadFailed,
  }) {
    return loaded(roomBookInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(RoomBookInfoModel roomBookInfo)? loaded,
    TResult? Function()? loadFailed,
  }) {
    return loaded?.call(roomBookInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(RoomBookInfoModel roomBookInfo)? loaded,
    TResult Function()? loadFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(roomBookInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomBookInfoStateLoading value) loading,
    required TResult Function(RoomBookInfoStateLoaded value) loaded,
    required TResult Function(RoomBookInfoStateLoadFailed value) loadFailed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomBookInfoStateLoading value)? loading,
    TResult? Function(RoomBookInfoStateLoaded value)? loaded,
    TResult? Function(RoomBookInfoStateLoadFailed value)? loadFailed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomBookInfoStateLoading value)? loading,
    TResult Function(RoomBookInfoStateLoaded value)? loaded,
    TResult Function(RoomBookInfoStateLoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RoomBookInfoStateLoaded implements RoomBookInfoState {
  const factory RoomBookInfoStateLoaded(
          {required final RoomBookInfoModel roomBookInfo}) =
      _$RoomBookInfoStateLoadedImpl;

  RoomBookInfoModel get roomBookInfo;
  @JsonKey(ignore: true)
  _$$RoomBookInfoStateLoadedImplCopyWith<_$RoomBookInfoStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoomBookInfoStateLoadFailedImplCopyWith<$Res> {
  factory _$$RoomBookInfoStateLoadFailedImplCopyWith(
          _$RoomBookInfoStateLoadFailedImpl value,
          $Res Function(_$RoomBookInfoStateLoadFailedImpl) then) =
      __$$RoomBookInfoStateLoadFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomBookInfoStateLoadFailedImplCopyWithImpl<$Res>
    extends _$RoomBookInfoStateCopyWithImpl<$Res,
        _$RoomBookInfoStateLoadFailedImpl>
    implements _$$RoomBookInfoStateLoadFailedImplCopyWith<$Res> {
  __$$RoomBookInfoStateLoadFailedImplCopyWithImpl(
      _$RoomBookInfoStateLoadFailedImpl _value,
      $Res Function(_$RoomBookInfoStateLoadFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RoomBookInfoStateLoadFailedImpl implements RoomBookInfoStateLoadFailed {
  const _$RoomBookInfoStateLoadFailedImpl();

  @override
  String toString() {
    return 'RoomBookInfoState.loadFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomBookInfoStateLoadFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(RoomBookInfoModel roomBookInfo) loaded,
    required TResult Function() loadFailed,
  }) {
    return loadFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(RoomBookInfoModel roomBookInfo)? loaded,
    TResult? Function()? loadFailed,
  }) {
    return loadFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(RoomBookInfoModel roomBookInfo)? loaded,
    TResult Function()? loadFailed,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomBookInfoStateLoading value) loading,
    required TResult Function(RoomBookInfoStateLoaded value) loaded,
    required TResult Function(RoomBookInfoStateLoadFailed value) loadFailed,
  }) {
    return loadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomBookInfoStateLoading value)? loading,
    TResult? Function(RoomBookInfoStateLoaded value)? loaded,
    TResult? Function(RoomBookInfoStateLoadFailed value)? loadFailed,
  }) {
    return loadFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomBookInfoStateLoading value)? loading,
    TResult Function(RoomBookInfoStateLoaded value)? loaded,
    TResult Function(RoomBookInfoStateLoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed(this);
    }
    return orElse();
  }
}

abstract class RoomBookInfoStateLoadFailed implements RoomBookInfoState {
  const factory RoomBookInfoStateLoadFailed() =
      _$RoomBookInfoStateLoadFailedImpl;
}
