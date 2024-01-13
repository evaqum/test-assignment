import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/di/configure.dart';
import '../../../app/navigation/routes.dart';
import '../../../app/presentation/widgets/app_bar.dart';
import '../../../app/presentation/widgets/bottom_button_sheet.dart';
import '../../../app/presentation/widgets/progress_indicator.dart';
import '../../../app/presentation/widgets/scaffold.dart';
import '../../../app/presentation/widgets/space.dart';
import '../../../hotels/presentation/hotel_screen/bloc/hotel_screen_bloc.dart';
import '../../domain/models/hotel_model.dart';
import 'widgets/about_hotel_card.dart';
import 'widgets/main_hotel_card.dart';

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
      child: const _HotelScreenView(),
    );
  }
}

class _HotelScreenView extends StatelessWidget {
  const _HotelScreenView();

  @override
  Widget build(BuildContext context) {
    return const HScaffold(
      applyAppBarColorToBackground: true,
      body: CustomScrollView(
        slivers: [
          HSliverAppBar(
            title: Text('Отель'),
          ),
          HScaffoldSliverBody(
            body: _HotelScreenBody(),
          ),
        ],
      ),
    );
  }
}

class _HotelScreenBody extends StatelessWidget {
  const _HotelScreenBody();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HotelScreenBloc, HotelScreenState>(
      listener: (context, state) {
        if (state is! HotelScreenStateFetchFailed) {
          return;
        }

        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          duration: Duration(days: 1),
          content: Text(
            'Не удалось получить информацию об отеле. Проверьте подключение к интернету.',
          ),
        ));
      },
      builder: (context, state) {
        return switch (state) {
          HotelScreenStateLoading() || HotelScreenStateFetchFailed() => const HSliverCenteredProgressIndicator(),
          HotelScreenStateFetched(:final hotel) => _HotelScreenContent(hotel: hotel),
        };
      },
    );
  }
}

class _GoToHotelRoomsButtonSheet extends StatelessWidget {
  final HotelModel hotel;
  const _GoToHotelRoomsButtonSheet({
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    return HBottomButtonSheet(
      text: 'К выбору номера',
      onPressed: () => HotelRoomsScreenRoute($extra: hotel).push(context),
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
        MainHotelCard(hotel: hotel),
        const Space.vertical(8.0),
        AboutHotelCard(hotel: hotel),
        const Space.vertical(8.0),
        _GoToHotelRoomsButtonSheet(hotel: hotel),
      ]),
    );
  }
}
