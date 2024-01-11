// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_room_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HotelRoomModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get priceFor => throw _privateConstructorUsedError;
  List<String> get features => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotelRoomModelCopyWith<HotelRoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelRoomModelCopyWith<$Res> {
  factory $HotelRoomModelCopyWith(
          HotelRoomModel value, $Res Function(HotelRoomModel) then) =
      _$HotelRoomModelCopyWithImpl<$Res, HotelRoomModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      double price,
      String priceFor,
      List<String> features,
      List<String> imageUrls});
}

/// @nodoc
class _$HotelRoomModelCopyWithImpl<$Res, $Val extends HotelRoomModel>
    implements $HotelRoomModelCopyWith<$Res> {
  _$HotelRoomModelCopyWithImpl(this._value, this._then);

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
    Object? priceFor = null,
    Object? features = null,
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
              as double,
      priceFor: null == priceFor
          ? _value.priceFor
          : priceFor // ignore: cast_nullable_to_non_nullable
              as String,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotelRoomModelImplCopyWith<$Res>
    implements $HotelRoomModelCopyWith<$Res> {
  factory _$$HotelRoomModelImplCopyWith(_$HotelRoomModelImpl value,
          $Res Function(_$HotelRoomModelImpl) then) =
      __$$HotelRoomModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      double price,
      String priceFor,
      List<String> features,
      List<String> imageUrls});
}

/// @nodoc
class __$$HotelRoomModelImplCopyWithImpl<$Res>
    extends _$HotelRoomModelCopyWithImpl<$Res, _$HotelRoomModelImpl>
    implements _$$HotelRoomModelImplCopyWith<$Res> {
  __$$HotelRoomModelImplCopyWithImpl(
      _$HotelRoomModelImpl _value, $Res Function(_$HotelRoomModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? priceFor = null,
    Object? features = null,
    Object? imageUrls = null,
  }) {
    return _then(_$HotelRoomModelImpl(
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
              as double,
      priceFor: null == priceFor
          ? _value.priceFor
          : priceFor // ignore: cast_nullable_to_non_nullable
              as String,
      features: null == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$HotelRoomModelImpl implements _HotelRoomModel {
  const _$HotelRoomModelImpl(
      {required this.id,
      required this.name,
      required this.price,
      required this.priceFor,
      required final List<String> features,
      required final List<String> imageUrls})
      : _features = features,
        _imageUrls = imageUrls;

  @override
  final int id;
  @override
  final String name;
  @override
  final double price;
  @override
  final String priceFor;
  final List<String> _features;
  @override
  List<String> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
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
    return 'HotelRoomModel(id: $id, name: $name, price: $price, priceFor: $priceFor, features: $features, imageUrls: $imageUrls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelRoomModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceFor, priceFor) ||
                other.priceFor == priceFor) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      price,
      priceFor,
      const DeepCollectionEquality().hash(_features),
      const DeepCollectionEquality().hash(_imageUrls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelRoomModelImplCopyWith<_$HotelRoomModelImpl> get copyWith =>
      __$$HotelRoomModelImplCopyWithImpl<_$HotelRoomModelImpl>(
          this, _$identity);
}

abstract class _HotelRoomModel implements HotelRoomModel {
  const factory _HotelRoomModel(
      {required final int id,
      required final String name,
      required final double price,
      required final String priceFor,
      required final List<String> features,
      required final List<String> imageUrls}) = _$HotelRoomModelImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  double get price;
  @override
  String get priceFor;
  @override
  List<String> get features;
  @override
  List<String> get imageUrls;
  @override
  @JsonKey(ignore: true)
  _$$HotelRoomModelImplCopyWith<_$HotelRoomModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
