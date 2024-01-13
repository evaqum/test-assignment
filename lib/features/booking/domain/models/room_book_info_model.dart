import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_book_info_model.freezed.dart';

@freezed
class RoomBookInfoModel with _$RoomBookInfoModel {
  const factory RoomBookInfoModel({
    required int id,
    required String hotelName,
    required String hotelAddress,
    required int hotelRating,
    required String hotelRatingName,
    required String departureFrom,
    required String arrivalTo,
    required String tourDateStart,
    required String tourDateEnd,
    required int numberOfNights,
    required String roomName,
    required String nutritionPlan,
    required int tourPrice,
    required int fuelCharge,
    required int serviceCharge,
    required int totalPrice,
  }) = _RoomBookInfoModel;
}
