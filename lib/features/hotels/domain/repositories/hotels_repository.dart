import '../models/hotel_model.dart';
import '../models/hotel_room_model.dart';

abstract interface class HotelsRepository {
  Future<HotelModel> getHotel();
  Future<List<HotelRoomModel>> getHotelRooms({required int hotelId});
}
