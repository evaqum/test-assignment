import '../../domain/models/room_book_info_model.dart';
import '../dto/room_book_info_dto.dart';

extension RoomBookInfoMapper on RoomBookInfoDto {
  RoomBookInfoModel toDomain() {
    return RoomBookInfoModel(
      id: id,
      hotelName: hotelName,
      hotelAddress: hotelAdress,
      hotelRating: horating,
      hotelRatingName: ratingName,
      departureFrom: departure,
      arrivalTo: arrivalCountry,
      tourDateStart: tourDateStart,
      tourDateEnd: tourDateStop,
      numberOfNights: numberOfNights,
      roomName: room,
      nutritionPlan: nutrition,
      tourPrice: tourPrice,
      fuelCharge: fuelCharge,
      serviceCharge: serviceCharge,
      totalPrice: tourPrice + fuelCharge + serviceCharge,
    );
  }
}
