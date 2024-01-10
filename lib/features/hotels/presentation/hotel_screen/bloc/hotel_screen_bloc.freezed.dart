// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HotelScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hotelFetchRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hotelFetchRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hotelFetchRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HotelFetchRequested value) hotelFetchRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HotelFetchRequested value)? hotelFetchRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HotelFetchRequested value)? hotelFetchRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelScreenEventCopyWith<$Res> {
  factory $HotelScreenEventCopyWith(
          HotelScreenEvent value, $Res Function(HotelScreenEvent) then) =
      _$HotelScreenEventCopyWithImpl<$Res, HotelScreenEvent>;
}

/// @nodoc
class _$HotelScreenEventCopyWithImpl<$Res, $Val extends HotelScreenEvent>
    implements $HotelScreenEventCopyWith<$Res> {
  _$HotelScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HotelFetchRequestedImplCopyWith<$Res> {
  factory _$$HotelFetchRequestedImplCopyWith(_$HotelFetchRequestedImpl value,
          $Res Function(_$HotelFetchRequestedImpl) then) =
      __$$HotelFetchRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HotelFetchRequestedImplCopyWithImpl<$Res>
    extends _$HotelScreenEventCopyWithImpl<$Res, _$HotelFetchRequestedImpl>
    implements _$$HotelFetchRequestedImplCopyWith<$Res> {
  __$$HotelFetchRequestedImplCopyWithImpl(_$HotelFetchRequestedImpl _value,
      $Res Function(_$HotelFetchRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HotelFetchRequestedImpl implements _HotelFetchRequested {
  const _$HotelFetchRequestedImpl();

  @override
  String toString() {
    return 'HotelScreenEvent.hotelFetchRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelFetchRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hotelFetchRequested,
  }) {
    return hotelFetchRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hotelFetchRequested,
  }) {
    return hotelFetchRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hotelFetchRequested,
    required TResult orElse(),
  }) {
    if (hotelFetchRequested != null) {
      return hotelFetchRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HotelFetchRequested value) hotelFetchRequested,
  }) {
    return hotelFetchRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HotelFetchRequested value)? hotelFetchRequested,
  }) {
    return hotelFetchRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HotelFetchRequested value)? hotelFetchRequested,
    required TResult orElse(),
  }) {
    if (hotelFetchRequested != null) {
      return hotelFetchRequested(this);
    }
    return orElse();
  }
}

abstract class _HotelFetchRequested implements HotelScreenEvent {
  const factory _HotelFetchRequested() = _$HotelFetchRequestedImpl;
}

/// @nodoc
mixin _$HotelScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(HotelModel hotel) hotelFetched,
    required TResult Function() hotelFetchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(HotelModel hotel)? hotelFetched,
    TResult? Function()? hotelFetchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(HotelModel hotel)? hotelFetched,
    TResult Function()? hotelFetchFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HotelFetched value) hotelFetched,
    required TResult Function(_HotelFetchFailed value) hotelFetchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HotelFetched value)? hotelFetched,
    TResult? Function(_HotelFetchFailed value)? hotelFetchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HotelFetched value)? hotelFetched,
    TResult Function(_HotelFetchFailed value)? hotelFetchFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelScreenStateCopyWith<$Res> {
  factory $HotelScreenStateCopyWith(
          HotelScreenState value, $Res Function(HotelScreenState) then) =
      _$HotelScreenStateCopyWithImpl<$Res, HotelScreenState>;
}

/// @nodoc
class _$HotelScreenStateCopyWithImpl<$Res, $Val extends HotelScreenState>
    implements $HotelScreenStateCopyWith<$Res> {
  _$HotelScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HotelScreenStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HotelScreenState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(HotelModel hotel) hotelFetched,
    required TResult Function() hotelFetchFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(HotelModel hotel)? hotelFetched,
    TResult? Function()? hotelFetchFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(HotelModel hotel)? hotelFetched,
    TResult Function()? hotelFetchFailed,
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
    required TResult Function(_HotelFetched value) hotelFetched,
    required TResult Function(_HotelFetchFailed value) hotelFetchFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HotelFetched value)? hotelFetched,
    TResult? Function(_HotelFetchFailed value)? hotelFetchFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HotelFetched value)? hotelFetched,
    TResult Function(_HotelFetchFailed value)? hotelFetchFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HotelScreenState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$HotelFetchedImplCopyWith<$Res> {
  factory _$$HotelFetchedImplCopyWith(
          _$HotelFetchedImpl value, $Res Function(_$HotelFetchedImpl) then) =
      __$$HotelFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HotelModel hotel});

  $HotelModelCopyWith<$Res> get hotel;
}

/// @nodoc
class __$$HotelFetchedImplCopyWithImpl<$Res>
    extends _$HotelScreenStateCopyWithImpl<$Res, _$HotelFetchedImpl>
    implements _$$HotelFetchedImplCopyWith<$Res> {
  __$$HotelFetchedImplCopyWithImpl(
      _$HotelFetchedImpl _value, $Res Function(_$HotelFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotel = null,
  }) {
    return _then(_$HotelFetchedImpl(
      hotel: null == hotel
          ? _value.hotel
          : hotel // ignore: cast_nullable_to_non_nullable
              as HotelModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HotelModelCopyWith<$Res> get hotel {
    return $HotelModelCopyWith<$Res>(_value.hotel, (value) {
      return _then(_value.copyWith(hotel: value));
    });
  }
}

/// @nodoc

class _$HotelFetchedImpl implements _HotelFetched {
  const _$HotelFetchedImpl({required this.hotel});

  @override
  final HotelModel hotel;

  @override
  String toString() {
    return 'HotelScreenState.hotelFetched(hotel: $hotel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelFetchedImpl &&
            (identical(other.hotel, hotel) || other.hotel == hotel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hotel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelFetchedImplCopyWith<_$HotelFetchedImpl> get copyWith =>
      __$$HotelFetchedImplCopyWithImpl<_$HotelFetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(HotelModel hotel) hotelFetched,
    required TResult Function() hotelFetchFailed,
  }) {
    return hotelFetched(hotel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(HotelModel hotel)? hotelFetched,
    TResult? Function()? hotelFetchFailed,
  }) {
    return hotelFetched?.call(hotel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(HotelModel hotel)? hotelFetched,
    TResult Function()? hotelFetchFailed,
    required TResult orElse(),
  }) {
    if (hotelFetched != null) {
      return hotelFetched(hotel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HotelFetched value) hotelFetched,
    required TResult Function(_HotelFetchFailed value) hotelFetchFailed,
  }) {
    return hotelFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HotelFetched value)? hotelFetched,
    TResult? Function(_HotelFetchFailed value)? hotelFetchFailed,
  }) {
    return hotelFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HotelFetched value)? hotelFetched,
    TResult Function(_HotelFetchFailed value)? hotelFetchFailed,
    required TResult orElse(),
  }) {
    if (hotelFetched != null) {
      return hotelFetched(this);
    }
    return orElse();
  }
}

abstract class _HotelFetched implements HotelScreenState {
  const factory _HotelFetched({required final HotelModel hotel}) =
      _$HotelFetchedImpl;

  HotelModel get hotel;
  @JsonKey(ignore: true)
  _$$HotelFetchedImplCopyWith<_$HotelFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HotelFetchFailedImplCopyWith<$Res> {
  factory _$$HotelFetchFailedImplCopyWith(_$HotelFetchFailedImpl value,
          $Res Function(_$HotelFetchFailedImpl) then) =
      __$$HotelFetchFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HotelFetchFailedImplCopyWithImpl<$Res>
    extends _$HotelScreenStateCopyWithImpl<$Res, _$HotelFetchFailedImpl>
    implements _$$HotelFetchFailedImplCopyWith<$Res> {
  __$$HotelFetchFailedImplCopyWithImpl(_$HotelFetchFailedImpl _value,
      $Res Function(_$HotelFetchFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HotelFetchFailedImpl implements _HotelFetchFailed {
  const _$HotelFetchFailedImpl();

  @override
  String toString() {
    return 'HotelScreenState.hotelFetchFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HotelFetchFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(HotelModel hotel) hotelFetched,
    required TResult Function() hotelFetchFailed,
  }) {
    return hotelFetchFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(HotelModel hotel)? hotelFetched,
    TResult? Function()? hotelFetchFailed,
  }) {
    return hotelFetchFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(HotelModel hotel)? hotelFetched,
    TResult Function()? hotelFetchFailed,
    required TResult orElse(),
  }) {
    if (hotelFetchFailed != null) {
      return hotelFetchFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HotelFetched value) hotelFetched,
    required TResult Function(_HotelFetchFailed value) hotelFetchFailed,
  }) {
    return hotelFetchFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HotelFetched value)? hotelFetched,
    TResult? Function(_HotelFetchFailed value)? hotelFetchFailed,
  }) {
    return hotelFetchFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HotelFetched value)? hotelFetched,
    TResult Function(_HotelFetchFailed value)? hotelFetchFailed,
    required TResult orElse(),
  }) {
    if (hotelFetchFailed != null) {
      return hotelFetchFailed(this);
    }
    return orElse();
  }
}

abstract class _HotelFetchFailed implements HotelScreenState {
  const factory _HotelFetchFailed() = _$HotelFetchFailedImpl;
}
