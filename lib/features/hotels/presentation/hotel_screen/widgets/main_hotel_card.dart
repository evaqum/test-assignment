import 'package:flutter/material.dart';

import '../../../../app/presentation/widgets/card.dart';
import '../../../../app/presentation/widgets/chips/rating_chip.dart';
import '../../../../app/presentation/widgets/image_carousel.dart';
import '../../../../app/presentation/widgets/space.dart';
import '../../../domain/models/hotel_model.dart';
import '../../widgets/price_for.dart';

class MainHotelCard extends StatelessWidget {
  const MainHotelCard({
    required this.hotel,
    super.key,
  });

  final HotelModel hotel;

  @override
  Widget build(BuildContext context) {
    return HCard(
      cardShape: HCardShape.bottomRounded,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HImageCarousel(
            images: [
              for (final imageUrl in hotel.imageUrls) NetworkImage(imageUrl),
            ],
          ),
          const Space.vertical(16.0),
          HRatingChip(
            rating: hotel.rating,
            ratingName: hotel.ratingName,
          ),
          const Space.vertical(8.0),
          Text(
            hotel.name,
            style: const TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Space.vertical(8.0),
          Text(
            hotel.address,
            style: const TextStyle(
              color: Color(0xFF0D72FF),
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Space.vertical(16.0),
          HPriceFor(
            isMinimalPrice: true,
            price: hotel.minimalPrice,
            priceFor: hotel.priceFor,
          ),
        ],
      ),
    );
  }
}
