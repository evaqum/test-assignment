import '../../domain/models/hotel_room_model.dart';
import '../dto/hotel_rooms_dto.dart';

extension HotelRoomsDtoMapper on HotelRoomsDto {
  List<HotelRoomModel> toDomain() {
    return [for (final roomDto in rooms) roomDto.toDomain()];
  }
}

extension HotelRoomsRoomDtoMapper on HotelRoomsRoomDto {
  HotelRoomModel toDomain() {
    return HotelRoomModel(
      id: id,
      name: name,
      price: price.toDouble(),
      priceFor: pricePer,
      features: peculiarities,
      imageUrls: imageUrls,
    );
  }
}
