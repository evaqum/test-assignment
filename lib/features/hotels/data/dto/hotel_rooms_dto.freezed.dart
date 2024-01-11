// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_rooms_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HotelRoomsDto _$HotelRoomsDtoFromJson(Map<String, dynamic> json) {
  return _HotelRoomsDto.fromJson(json);
}

/// @nodoc
mixin _$HotelRoomsDto {
  List<HotelRoomsRoomDto> get rooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelRoomsDtoCopyWith<HotelRoomsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelRoomsDtoCopyWith<$Res> {
  factory $HotelRoomsDtoCopyWith(
          HotelRoomsDto value, $Res Function(HotelRoomsDto) then) =
      _$HotelRoomsDtoCopyWithImpl<$Res, HotelRoomsDto>;
  @useResult
  $Res call({List<HotelRoomsRoomDto> rooms});
}

/// @nodoc
class _$HotelRoomsDtoCopyWithImpl<$Res, $Val extends HotelRoomsDto>
    implements $HotelRoomsDtoCopyWith<$Res> {
  _$HotelRoomsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_value.copyWith(
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<HotelRoomsRoomDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotelRoomsDtoImplCopyWith<$Res>
    implements $HotelRoomsDtoCopyWith<$Res> {
  factory _$$HotelRoomsDtoImplCopyWith(
          _$HotelRoomsDtoImpl value, $Res Function(_$HotelRoomsDtoImpl) then) =
      __$$HotelRoomsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<HotelRoomsRoomDto> rooms});
}

/// @nodoc
class __$$HotelRoomsDtoImplCopyWithImpl<$Res>
    extends _$HotelRoomsDtoCopyWithImpl<$Res, _$HotelRoomsDtoImpl>
    implements _$$HotelRoomsDtoImplCopyWith<$Res> {
  __$$HotelRoomsDtoImplCopyWithImpl(
      _$HotelRoomsDtoImpl _value, $Res Function(_$HotelRoomsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_$HotelRoomsDtoImpl(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<HotelRoomsRoomDto>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$HotelRoomsDtoImpl implements _HotelRoomsDto {
  const _$HotelRoomsDtoImpl({required final List<HotelRoomsRoomDto> rooms})
      : _rooms = rooms;

  factory _$HotelRoomsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelRoomsDtoImplFromJson(json);

  final List<HotelRoomsRoomDto> _rooms;
  @override
  List<HotelRoomsRoomDto> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'HotelRoomsDto(rooms: $rooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelRoomsDtoImpl &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelRoomsDtoImplCopyWith<_$HotelRoomsDtoImpl> get copyWith =>
      __$$HotelRoomsDtoImplCopyWithImpl<_$HotelRoomsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelRoomsDtoImplToJson(
      this,
    );
  }
}

abstract class _HotelRoomsDto implements HotelRoomsDto {
  const factory _HotelRoomsDto({required final List<HotelRoomsRoomDto> rooms}) =
      _$HotelRoomsDtoImpl;

  factory _HotelRoomsDto.fromJson(Map<String, dynamic> json) =
      _$HotelRoomsDtoImpl.fromJson;

  @override
  List<HotelRoomsRoomDto> get rooms;
  @override
  @JsonKey(ignore: true)
  _$$HotelRoomsDtoImplCopyWith<_$HotelRoomsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HotelRoomsRoomDto _$HotelRoomsRoomDtoFromJson(Map<String, dynamic> json) {
  return _HotelRoomsRoomDto.fromJson(json);
}

/// @nodoc
mixin _$HotelRoomsRoomDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get pricePer => throw _privateConstructorUsedError;
  List<String> get peculiarities => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelRoomsRoomDtoCopyWith<HotelRoomsRoomDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelRoomsRoomDtoCopyWith<$Res> {
  factory $HotelRoomsRoomDtoCopyWith(
          HotelRoomsRoomDto value, $Res Function(HotelRoomsRoomDto) then) =
      _$HotelRoomsRoomDtoCopyWithImpl<$Res, HotelRoomsRoomDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      int price,
      String pricePer,
      List<String> peculiarities,
      List<String> imageUrls});
}

/// @nodoc
class _$HotelRoomsRoomDtoCopyWithImpl<$Res, $Val extends HotelRoomsRoomDto>
    implements $HotelRoomsRoomDtoCopyWith<$Res> {
  _$HotelRoomsRoomDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? pricePer = null,
    Object? peculiarities = null,
    Object? imageUrls = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      pricePer: null == pricePer
          ? _value.pricePer
          : pricePer // ignore: cast_nullable_to_non_nullable
              as String,
      peculiarities: null == peculiarities
          ? _value.peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotelRoomsRoomDtoImplCopyWith<$Res>
    implements $HotelRoomsRoomDtoCopyWith<$Res> {
  factory _$$HotelRoomsRoomDtoImplCopyWith(_$HotelRoomsRoomDtoImpl value,
          $Res Function(_$HotelRoomsRoomDtoImpl) then) =
      __$$HotelRoomsRoomDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int price,
      String pricePer,
      List<String> peculiarities,
      List<String> imageUrls});
}

/// @nodoc
class __$$HotelRoomsRoomDtoImplCopyWithImpl<$Res>
    extends _$HotelRoomsRoomDtoCopyWithImpl<$Res, _$HotelRoomsRoomDtoImpl>
    implements _$$HotelRoomsRoomDtoImplCopyWith<$Res> {
  __$$HotelRoomsRoomDtoImplCopyWithImpl(_$HotelRoomsRoomDtoImpl _value,
      $Res Function(_$HotelRoomsRoomDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? pricePer = null,
    Object? peculiarities = null,
    Object? imageUrls = null,
  }) {
    return _then(_$HotelRoomsRoomDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      pricePer: null == pricePer
          ? _value.pricePer
          : pricePer // ignore: cast_nullable_to_non_nullable
              as String,
      peculiarities: null == peculiarities
          ? _value._peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$HotelRoomsRoomDtoImpl implements _HotelRoomsRoomDto {
  const _$HotelRoomsRoomDtoImpl(
      {required this.id,
      required this.name,
      required this.price,
      required this.pricePer,
      required final List<String> peculiarities,
      required final List<String> imageUrls})
      : _peculiarities = peculiarities,
        _imageUrls = imageUrls;

  factory _$HotelRoomsRoomDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelRoomsRoomDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int price;
  @override
  final String pricePer;
  final List<String> _peculiarities;
  @override
  List<String> get peculiarities {
    if (_peculiarities is EqualUnmodifiableListView) return _peculiarities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_peculiarities);
  }

  final List<String> _imageUrls;
  @override
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  String toString() {
    return 'HotelRoomsRoomDto(id: $id, name: $name, price: $price, pricePer: $pricePer, peculiarities: $peculiarities, imageUrls: $imageUrls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelRoomsRoomDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.pricePer, pricePer) ||
                other.pricePer == pricePer) &&
            const DeepCollectionEquality()
                .equals(other._peculiarities, _peculiarities) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      price,
      pricePer,
      const DeepCollectionEquality().hash(_peculiarities),
      const DeepCollectionEquality().hash(_imageUrls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelRoomsRoomDtoImplCopyWith<_$HotelRoomsRoomDtoImpl> get copyWith =>
      __$$HotelRoomsRoomDtoImplCopyWithImpl<_$HotelRoomsRoomDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelRoomsRoomDtoImplToJson(
      this,
    );
  }
}

abstract class _HotelRoomsRoomDto implements HotelRoomsRoomDto {
  const factory _HotelRoomsRoomDto(
      {required final int id,
      required final String name,
      required final int price,
      required final String pricePer,
      required final List<String> peculiarities,
      required final List<String> imageUrls}) = _$HotelRoomsRoomDtoImpl;

  factory _HotelRoomsRoomDto.fromJson(Map<String, dynamic> json) =
      _$HotelRoomsRoomDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get price;
  @override
  String get pricePer;
  @override
  List<String> get peculiarities;
  @override
  List<String> get imageUrls;
  @override
  @JsonKey(ignore: true)
  _$$HotelRoomsRoomDtoImplCopyWith<_$HotelRoomsRoomDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
