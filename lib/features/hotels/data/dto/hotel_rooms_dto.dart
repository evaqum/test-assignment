// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_rooms_dto.freezed.dart';
part 'hotel_rooms_dto.g.dart';

@freezed
class HotelRoomsDto with _$HotelRoomsDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory HotelRoomsDto({
    required List<HotelRoomsRoomDto> rooms,
  }) = _HotelRoomsDto;

  factory HotelRoomsDto.fromJson(Map<String, dynamic> json) => _$HotelRoomsDtoFromJson(json);
}

@freezed
class HotelRoomsRoomDto with _$HotelRoomsRoomDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory HotelRoomsRoomDto({
    required int id,
    required String name,
    required int price,
    required String pricePer,
    required List<String> peculiarities,
    required List<String> imageUrls,
  }) = _HotelRoomsRoomDto;

  factory HotelRoomsRoomDto.fromJson(Map<String, dynamic> json) => _$HotelRoomsRoomDtoFromJson(json);
}
