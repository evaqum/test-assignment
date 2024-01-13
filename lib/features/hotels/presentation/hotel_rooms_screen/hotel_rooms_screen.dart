import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/di/configure.dart';
import '../../../app/icons.dart';
import '../../../app/navigation/routes.dart';
import '../../../app/presentation/widgets/app_bar.dart';
import '../../../app/presentation/widgets/button.dart';
import '../../../app/presentation/widgets/card.dart';
import '../../../app/presentation/widgets/chip.dart';
import '../../../app/presentation/widgets/chips/feature_chip.dart';
import '../../../app/presentation/widgets/fitted_icon.dart';
import '../../../app/presentation/widgets/image_carousel.dart';
import '../../../app/presentation/widgets/progress_indicator.dart';
import '../../../app/presentation/widgets/scaffold.dart';
import '../../../app/presentation/widgets/space.dart';
import '../../domain/models/hotel_model.dart';
import '../../domain/models/hotel_room_model.dart';
import '../widgets/price_for.dart';
import 'bloc/hotel_rooms_screen_bloc.dart';

class HotelRoomsScreen extends StatelessWidget {
  final HotelModel hotel;

  const HotelRoomsScreen({
    super.key,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HotelRoomsScreenBloc(
        hotel: hotel,
        hotelsRepository: get(),
      ) //
        ..add(const HotelRoomsScreenEvent.roomsFetchRequested()),
      child: const _HotelRoomsScreenView(),
    );
  }
}

class _HotelRoomsScreenView extends StatelessWidget {
  const _HotelRoomsScreenView();

  @override
  Widget build(BuildContext context) {
    final hotel = context.read<HotelRoomsScreenBloc>().hotel;

    return HScaffold(
      body: CustomScrollView(
        slivers: [
          HSliverAppBar(
            title: Text(hotel.name),
          ),
          const _HotelRoomsScreenBody(),
        ],
      ),
    );
  }
}

class _HotelRoomsScreenBody extends StatelessWidget {
  const _HotelRoomsScreenBody();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HotelRoomsScreenBloc, HotelRoomsScreenState>(
      listener: (context, state) {
        if (state is! HotelRoomsScreenStateFetchFailed) {
          return;
        }

        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          duration: Duration(days: 1),
          content: Text(
            'Не удалось получить информацию о номерах в отеле. Проверьте подключение к интернету.',
          ),
        ));
      },
      builder: (context, state) {
        return switch (state) {
          HotelRoomsScreenStateLoading() || HotelRoomsScreenStateFetchFailed() => const HSliverCenteredProgressIndicator(),
          HotelRoomsScreenStateFetched(:final rooms) => _HotelRoomsScreenContent(rooms: rooms),
        };
      },
    );
  }
}

class _HotelRoomsScreenContent extends StatelessWidget {
  final List<HotelRoomModel> rooms;

  const _HotelRoomsScreenContent({
    required this.rooms,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        if (index.isEven) {
          return const Space.vertical(8.0);
        }
        final itemIndex = index ~/ 2;

        return _HotelRoomCard(room: rooms[itemIndex]);
      },
      itemCount: rooms.length * 2 + 1, // item separators + empty space before and after the list
    );
  }
}

class _HotelRoomCard extends StatelessWidget {
  final HotelRoomModel room;

  const _HotelRoomCard({
    required this.room,
  });

  @override
  Widget build(BuildContext context) {
    late final hotel = context.read<HotelRoomsScreenBloc>().hotel;

    return HCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HImageCarousel(
            images: [
              for (final imageUrl in room.imageUrls) NetworkImage(imageUrl),
            ],
          ),
          const Space.vertical(8.0),
          Text(
            room.name,
            style: const TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Space.vertical(8.0),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              for (final feature in room.features) HFeatureChip(feature: feature),
            ],
          ),
          const Space.vertical(8.0),
          HChip(
            foregroundColor: const Color(0xFF0D72FF),
            backgroundColor: const Color(0x1A0D72FF),
            disablePadding: true,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: kDefaultChipPadding -
                      EdgeInsets.only(
                        right: kDefaultChipPadding.right,
                      ),
                  child: const Text('Подробнее о номере'),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.0),
                  child: HFittedIcon.squareBox(
                    dimension: 24.0,
                    icon: Icon(HIcons.chevron_right24),
                  ),
                ),
              ],
            ),
          ),
          const Space.vertical(16.0),
          HPriceFor(
            price: room.price,
            priceFor: room.priceFor,
          ),
          const Space.vertical(16.0),
          HButton(
            text: 'Выбрать номер',
            onPressed: () => RoomBookScreenRoute($extra: (
              room: room,
              hotel: hotel,
            )).push(context),
          ),
        ],
      ),
    );
  }
}
