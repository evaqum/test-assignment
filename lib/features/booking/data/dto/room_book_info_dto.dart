// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_book_info_dto.freezed.dart';
part 'room_book_info_dto.g.dart';

@freezed
class RoomBookInfoDto with _$RoomBookInfoDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory RoomBookInfoDto({
    required int id,
    required String hotelName,
    required String hotelAdress,
    required int horating,
    required String ratingName,
    required String departure,
    required String arrivalCountry,
    required String tourDateStart,
    required String tourDateStop,
    required int numberOfNights,
    required String room,
    required String nutrition,
    required int tourPrice,
    required int fuelCharge,
    required int serviceCharge,
  }) = _RoomBookInfoDto;

  factory RoomBookInfoDto.fromJson(Map<String, dynamic> json) => _$RoomBookInfoDtoFromJson(json);
}
