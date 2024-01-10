import '../models/hotel_model.dart';

abstract interface class HotelsRepository {
  Future<HotelModel> getHotel();
}
