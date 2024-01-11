// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_dto.freezed.dart';
part 'hotel_dto.g.dart';

@freezed
class HotelDto with _$HotelDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory HotelDto({
    required int id,
    required String name,
    required String adress,
    required int minimalPrice,
    required String priceForIt,
    required int rating,
    required String ratingName,
    required List<String> imageUrls,
    required HotelAboutTheHotelDto aboutTheHotel,
  }) = _HotelDto;

  factory HotelDto.fromJson(Map<String, dynamic> json) => _$HotelDtoFromJson(json);
}

@freezed
class HotelAboutTheHotelDto with _$HotelAboutTheHotelDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory HotelAboutTheHotelDto({
    required String description,
    required List<String> peculiarities,
  }) = _HotelAboutTheHotelDto;

  factory HotelAboutTheHotelDto.fromJson(Map<String, dynamic> json) => _$HotelAboutTheHotelDtoFromJson(json);
}
