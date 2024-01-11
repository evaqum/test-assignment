import 'package:flutter/material.dart';

import '../chip.dart';

class HFeatureChip extends StatelessWidget {
  final String feature;

  const HFeatureChip({
    super.key,
    required this.feature,
  });

  @override
  Widget build(BuildContext context) {
    return HChip(
      foregroundColor: const Color(0xFF828796),
      backgroundColor: const Color(0xFFFBFBFC),
      child: Text(
        feature,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
