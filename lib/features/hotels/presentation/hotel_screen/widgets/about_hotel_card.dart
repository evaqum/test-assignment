import 'package:flutter/material.dart';

import '../../../../app/icons.dart';
import '../../../../app/presentation/widgets/card.dart';
import '../../../../app/presentation/widgets/chips/feature_chip.dart';
import '../../../../app/presentation/widgets/fitted_icon.dart';
import '../../../../app/presentation/widgets/space.dart';
import '../../../domain/models/hotel_model.dart';

class AboutHotelCard extends StatelessWidget {
  const AboutHotelCard({
    super.key,
    required this.hotel,
  });

  final HotelModel hotel;

  @override
  Widget build(BuildContext context) {
    return HCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Об отеле',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          if (hotel.features != null && hotel.features!.isNotEmpty) ...[
            const Space.vertical(16.0),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                for (final feature in hotel.features!) HFeatureChip(feature: feature),
              ],
            ),
          ],
          const Space.vertical(12.0),
          Text(
            hotel.description,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: Colors.black.withOpacity(0.9),
            ),
          ),
          const Space.vertical(16.0),
          const _FacilitiesCard(
            items: [
              _FacilitiesItemData(
                icon: HIcons.emoji_happy,
                title: 'Удобства',
                description: 'Самое необходимое',
              ),
              _FacilitiesItemData(
                icon: HIcons.tick_square,
                title: 'Что включено',
                description: 'Самое необходимое',
              ),
              _FacilitiesItemData(
                icon: HIcons.close_square,
                title: 'Что не включено',
                description: 'Самое необходимое',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _FacilitiesItemData {
  final IconData icon;
  final String title;
  final String description;

  const _FacilitiesItemData({
    required this.icon,
    required this.title,
    required this.description,
  });
}

class _FacilitiesCard extends StatelessWidget {
  final double iconSize;
  final double iconSpacing;
  final List<_FacilitiesItemData> items;
  final BorderRadiusGeometry borderRadius;

  const _FacilitiesCard({
    required this.items,
    // ignore: unused_element
    this.iconSize = 24.0,
    // ignore: unused_element
    this.iconSpacing = 12.0,
    // ignore: unused_element
    this.borderRadius = const BorderRadius.all(Radius.circular(15.0)),
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: const Color(0xFFFBFBFC),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Column(
            children: [
              for (final (i, item) in items.indexed) ...[
                _FacilitiesItem(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 10.0,
                  ),
                  iconSize: iconSize,
                  iconSpacing: iconSpacing,
                  data: item,
                ),
                if (i < items.length - 1)
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.0 + iconSize + iconSpacing,
                      right: 15.0,
                    ),
                    child: const Divider(
                      height: 1,
                      color: Color(0x26828796),
                      thickness: 1.0,
                    ),
                  ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _FacilitiesItem extends StatelessWidget {
  final EdgeInsets padding;
  final double iconSize;
  final double iconSpacing;
  final _FacilitiesItemData data;

  const _FacilitiesItem({
    required this.padding,
    required this.iconSize,
    required this.iconSpacing,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      textStyle: DefaultTextStyle.of(context).style,
      child: Ink(
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: padding,
            child: Row(
              children: [
                HFittedIcon.squareBox(
                  dimension: iconSize,
                  icon: Icon(
                    data.icon,
                    color: Colors.black,
                  ),
                ),
                Space.horizontal(iconSpacing),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        data.title,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2C3035),
                        ),
                      ),
                      const Space.vertical(2.0),
                      Text(
                        data.description,
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF828696),
                        ),
                      ),
                    ],
                  ),
                ),
                const HFittedIcon.squareBox(
                  dimension: 24.0,
                  icon: Icon(
                    HIcons.chevron_right24,
                    color: Color(0xFF2C3035),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
