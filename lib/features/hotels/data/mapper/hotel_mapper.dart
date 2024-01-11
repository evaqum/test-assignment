import '../../domain/models/hotel_model.dart';
import '../dto/hotel_dto.dart';

extension HotelDtoMapper on HotelDto {
  HotelModel toDomain() {
    return HotelModel(
      id: id,
      name: name,
      address: adress,
      description: aboutTheHotel.description,
      imageUrls: imageUrls,
      minimalPrice: minimalPrice.toDouble(),
      priceFor: priceForIt,
      rating: rating,
      ratingName: ratingName,
      features: aboutTheHotel.peculiarities,
    );
  }
}
