import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/money_format.dart';
import '../../../app/di/configure.dart';
import '../../../app/navigation/routes.dart';
import '../../../app/presentation/widgets/app_bar.dart';
import '../../../app/presentation/widgets/bottom_button_sheet.dart';
import '../../../app/presentation/widgets/card.dart';
import '../../../app/presentation/widgets/info_table.dart';
import '../../../app/presentation/widgets/progress_indicator.dart';
import '../../../app/presentation/widgets/scaffold.dart';
import '../../../app/presentation/widgets/space.dart';
import '../../../hotels/domain/models/hotel_model.dart';
import '../../../hotels/domain/models/hotel_room_model.dart';
import '../../domain/models/room_book_info_model.dart';
import 'bloc/room_book_form/room_book_form_bloc.dart';
import 'bloc/room_book_info/room_book_info_bloc.dart';
import 'widgets/client_info_form.dart';
import 'widgets/hotel_info_card.dart';
import 'widgets/info_card.dart';
import 'widgets/tourists_column.dart';

class RoomBookScreen extends StatelessWidget {
  final HotelModel hotel;
  final HotelRoomModel room;

  const RoomBookScreen({
    super.key,
    required this.hotel,
    required this.room,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RoomBookInfoBloc(
            hotel: hotel,
            room: room,
            bookingRepository: get(),
          )..add(const RoomBookInfoEvent.fetchRequested()),
        ),
        BlocProvider(
          create: (context) => RoomBookFormBloc(
            bookingRepository: get(),
          ),
        ),
      ],
      child: const _RoomBookScreenView(),
    );
  }
}

class _RoomBookScreenView extends StatelessWidget {
  const _RoomBookScreenView();

  @override
  Widget build(BuildContext context) {
    return const HScaffold(
      applyAppBarColorToBackground: true,
      body: CustomScrollView(
        slivers: [
          HSliverAppBar(
            title: Text('Бронирование'),
          ),
          HScaffoldSliverBody(
            body: _RoomBookScreenBody(),
          ),
        ],
      ),
    );
  }
}

class _RoomBookScreenBody extends StatelessWidget {
  const _RoomBookScreenBody();

  @override
  Widget build(BuildContext context) {
    return BlocListener<RoomBookFormBloc, RoomBookFormState>(
      listenWhen: (previous, current) => previous.orderIdResult != current.orderIdResult,
      listener: (context, state) {
        final orderId = state.orderIdResult;
        if (orderId == null) {
          return;
        }

        RoomBookedScreenRoute(orderId: orderId).push(context);
      },
      child: BlocConsumer<RoomBookInfoBloc, RoomBookInfoState>(
        listener: (context, state) {
          if (state is! RoomBookInfoStateLoadFailed) {
            return;
          }

          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            duration: Duration(days: 1),
            content: Text(
              'Не удалось получить информацию о брони. Проверьте подключение к интернету.',
            ),
          ));
        },
        builder: (context, state) {
          return switch (state) {
            RoomBookInfoStateLoading() || RoomBookInfoStateLoadFailed() => const HSliverCenteredProgressIndicator(),
            RoomBookInfoStateLoaded(:final roomBookInfo) => _RoomBookScreenContent(roomBookInfo: roomBookInfo),
          };
        },
      ),
    );
  }
}

class _RoomBookScreenContent extends StatelessWidget {
  final RoomBookInfoModel roomBookInfo;

  const _RoomBookScreenContent({
    required this.roomBookInfo,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RoomBookFormBloc>();

    return SliverList.list(
      children: [
        const Space.vertical(8.0),
        RoomBookHotelInfoCard(roomBookInfo: roomBookInfo),
        const Space.vertical(8.0),
        RoomBookInfoCard(roomBookInfo: roomBookInfo),
        const Space.vertical(8.0),
        const RoomBookClientInfoForm(),
        const Space.vertical(8.0),
        const RoomBookTouristsColumn(),
        const Space.vertical(8.0),
        _PricesCard(roomBookInfo: roomBookInfo),
        const Space.vertical(10.0),
        HBottomButtonSheet(
          text: 'Оплатить ${roomBookInfo.totalPrice.formatMoney()} ₽',
          onPressed: () => bloc.add(const RoomBookFormEvent.submitted()),
        ),
      ],
    );
  }
}

class _PricesCard extends StatelessWidget {
  final RoomBookInfoModel roomBookInfo;

  const _PricesCard({
    required this.roomBookInfo,
  });

  @override
  Widget build(BuildContext context) {
    return HCard(
      child: HInfoTable(
        titleFlex: 6,
        valueFlex: 4,
        valueAlign: TextAlign.right,
        entries: [
          HInfoTableEntry(
            title: 'Тур',
            value: '${roomBookInfo.tourPrice.formatMoney()} ₽',
          ),
          HInfoTableEntry(
            title: 'Топливный сбор',
            value: '${roomBookInfo.fuelCharge.formatMoney()} ₽',
          ),
          HInfoTableEntry(
            title: 'Сервисный сбор',
            value: '${roomBookInfo.serviceCharge.formatMoney()} ₽',
          ),
          HInfoTableEntry(
            title: 'К оплате',
            value: '${roomBookInfo.totalPrice.formatMoney()} ₽',
            valueStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Color(0xFF0D72FF),
            ),
          ),
        ],
      ),
    );
  }
}
