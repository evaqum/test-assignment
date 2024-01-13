import 'package:flutter/material.dart';

import '../../../icons.dart';
import '../chip.dart';
import '../fitted_icon.dart';
import '../space.dart';

class HRatingChip extends StatelessWidget {
  final int rating;
  final String ratingName;

  const HRatingChip({
    super.key,
    required this.rating,
    required this.ratingName,
  });

  @override
  Widget build(BuildContext context) {
    return HChip(
      foregroundColor: const Color(0xFFFFA800),
      backgroundColor: const Color(0x33FFC600),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const HFittedIcon.squareBox(
            dimension: 15.0,
            icon: Icon(
              HIcons.star,
            ),
          ),
          const Space.horizontal(2.0),
          Text(
            '$rating $ratingName',
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
