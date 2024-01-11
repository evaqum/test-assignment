// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_rooms_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelRoomsDtoImpl _$$HotelRoomsDtoImplFromJson(Map<String, dynamic> json) =>
    _$HotelRoomsDtoImpl(
      rooms: (json['rooms'] as List<dynamic>)
          .map((e) => HotelRoomsRoomDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HotelRoomsDtoImplToJson(_$HotelRoomsDtoImpl instance) =>
    <String, dynamic>{
      'rooms': instance.rooms,
    };

_$HotelRoomsRoomDtoImpl _$$HotelRoomsRoomDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$HotelRoomsRoomDtoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      price: json['price'] as int,
      pricePer: json['price_per'] as String,
      peculiarities: (json['peculiarities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      imageUrls: (json['image_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$HotelRoomsRoomDtoImplToJson(
        _$HotelRoomsRoomDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'price_per': instance.pricePer,
      'peculiarities': instance.peculiarities,
      'image_urls': instance.imageUrls,
    };
