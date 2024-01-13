import 'package:flutter/material.dart';

import '../../../../app/presentation/widgets/card.dart';
import '../../../../app/presentation/widgets/chips/rating_chip.dart';
import '../../../../app/presentation/widgets/space.dart';
import '../../../domain/models/room_book_info_model.dart';

class RoomBookHotelInfoCard extends StatelessWidget {
  final RoomBookInfoModel roomBookInfo;

  const RoomBookHotelInfoCard({
    super.key,
    required this.roomBookInfo,
  });

  @override
  Widget build(BuildContext context) {
    return HCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HRatingChip(
            rating: roomBookInfo.hotelRating,
            ratingName: roomBookInfo.hotelRatingName,
          ),
          const Space.vertical(8.0),
          Text(
            roomBookInfo.hotelName,
            style: const TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Space.vertical(8.0),
          Text(
            roomBookInfo.hotelAddress,
            style: const TextStyle(
              color: Color(0xFF0D72FF),
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
