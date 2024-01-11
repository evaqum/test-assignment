import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_model.freezed.dart';

@freezed
class HotelModel with _$HotelModel {
  const factory HotelModel({
    required int id,
    required String name,
    required String address,
    required List<String> imageUrls,
    required int rating,
    required String ratingName,
    required double minimalPrice,
    required String priceFor,
    required String description,
    List<String>? features,
  }) = _HotelModel;
}
