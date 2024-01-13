import '../models/room_book_info_model.dart';

abstract interface class BookingRepository {
  Future<RoomBookInfoModel> getRoomBookInfo({
    required int hotelId,
    required int roomId,
  });
  Future<String> bookRoom();
}
