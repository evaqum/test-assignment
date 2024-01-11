import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_model.freezed.dart';

@freezed
class HotelModel with _$HotelModel {
  const factory HotelModel({
    required String id,
    required String name,
    required String address,
    required List<String> imageUrls,
    required String ratingString,
    required double minimalPrice,
    required String description,
    List<String>? features,
  }) = _HotelModel;
}
