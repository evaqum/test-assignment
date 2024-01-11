import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_room_model.freezed.dart';

@freezed
class HotelRoomModel with _$HotelRoomModel {
  const factory HotelRoomModel({
    required int id,
    required String name,
    required double price,
    required String priceFor,
    required List<String> features,
    required List<String> imageUrls,
  }) = _HotelRoomModel;
}
