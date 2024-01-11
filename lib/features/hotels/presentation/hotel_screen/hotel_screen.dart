import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/money_format.dart';
import '../../../../utils/nbsp.dart';
import '../../../app/di/configure.dart';
import '../../../app/presentation/widgets/card.dart';
import '../../../app/presentation/widgets/image_carousel.dart';
import '../../../app/presentation/widgets/progress_indicator.dart';
import '../../../app/presentation/widgets/scaffold.dart';
import '../../../app/presentation/widgets/space.dart';
import '../../../hotels/presentation/hotel_screen/bloc/hotel_screen_bloc.dart';
import '../../domain/models/hotel_model.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return HotelScreenBloc(
          hotelsRepository: get(),
        )..add(const HotelScreenEvent.hotelFetchRequested());
      },
      child: const _HotelScreenBody(),
    );
  }
}

class _HotelScreenBody extends StatelessWidget {
  const _HotelScreenBody();

  @override
  Widget build(BuildContext context) {
    return const HScaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Отель'),
          ),
          _HotelScreenView(),
        ],
      ),
    );
  }
}

class _HotelScreenView extends StatelessWidget {
  const _HotelScreenView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotelScreenBloc, HotelScreenState>(
      builder: (context, state) {
        const loader = SliverFillRemaining(
          child: Center(
            child: HCircularProgressIndicator(),
          ),
        );

        return switch (state) {
          HotelScreenStateLoading() || HotelScreenStateFetchFailed() => loader,
          HotelScreenStateFetched(:final hotel) => _HotelScreenContent(hotel: hotel),
        };
      },
    );
  }
}

class _HotelScreenContent extends StatelessWidget {
  final HotelModel hotel;

  const _HotelScreenContent({
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        _MainHotelCard(hotel: hotel),
        const Space.vertical(8.0),
        HCard(
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
                    for (final feature in hotel.features!)
                      _FeatureChip(
                        feature: feature,
                      ),
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
            ],
          ),
        ),
      ]),
    );
  }
}

class _FeatureChip extends StatelessWidget {
  final String feature;

  const _FeatureChip({
    super.key,
    required this.feature,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: const Color(0xFFFBFBFC),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 5.0,
        ),
        child: Text(
          feature,
          style: const TextStyle(
            color: Color(0xFF828796),
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class _MainHotelCard extends StatelessWidget {
  const _MainHotelCard({
    required this.hotel,
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
          _RatingChip(ratingString: hotel.ratingString),
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
          Text.rich(TextSpan(children: [
            TextSpan(
              text: 'от ${hotel.minimalPrice.formatMoney()} ₽ '.withNbsp(),
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: 'за тур с перелётом'.withNbsp(),
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                color: Color(0xFF828796),
              ),
            ),
          ])),
        ],
      ),
    );
  }
}

class _RatingChip extends StatelessWidget {
  final String ratingString;

  const _RatingChip({
    required this.ratingString,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color(0x33FFC600),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 5.0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const _StarIcon(
              color: Color(0xFFFFA800),
              size: 15.0,
            ),
            const Space.horizontal(2.0),
            Text(
              ratingString,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Color(0xFFFFA800),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StarIcon extends StatelessWidget {
  final Color color;
  final double size;

  const _StarIcon({
    required this.color,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: DecoratedBox(
        decoration: ShapeDecoration(
          color: color,
          shape: const StarBorder(
            points: 5,
            innerRadiusRatio: 0.45,
          ),
        ),
      ),
    );
  }
}
