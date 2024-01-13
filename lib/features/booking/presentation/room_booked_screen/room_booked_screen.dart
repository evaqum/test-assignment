import 'package:flutter/material.dart';

import '../../../app/navigation/routes.dart';
import '../../../app/presentation/widgets/app_bar.dart';
import '../../../app/presentation/widgets/bottom_button_sheet.dart';
import '../../../app/presentation/widgets/scaffold.dart';
import '../../../app/presentation/widgets/space.dart';

class RoomBookedScreen extends StatelessWidget {
  final String orderId;

  const RoomBookedScreen({
    super.key,
    required this.orderId,
  });

  @override
  Widget build(BuildContext context) {
    return HScaffold(
      applyAppBarColorToBackground: true,
      body: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          const HSliverAppBar(
            title: Text('Заказ оплачен'),
          ),
          _RoomBookedScreenView(orderId: orderId),
        ],
      ),
    );
  }
}

class _RoomBookedScreenView extends StatelessWidget {
  const _RoomBookedScreenView({
    required this.orderId,
  });

  final String orderId;

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      fillOverscroll: false,
      hasScrollBody: false,
      child: Column(
        children: [
          _RoomBookedScreenBody(orderId: orderId),
          const _BackToHotelScreenButton(),
        ],
      ),
    );
  }
}

class _RoomBookedScreenBody extends StatelessWidget {
  const _RoomBookedScreenBody({
    required this.orderId,
  });

  final String orderId;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const _PartyPopper(),
            const Space.vertical(32),
            const Text(
              'Ваш заказ принят в работу',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const Space.vertical(20),
            Text(
              'Подтверждение заказа №$orderId может занять некоторое время (от 1 часа до суток).\n'
              'Как только мы получим ответ от туроператора, вам на почту придет уведомление.',
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                color: Color(0xFF828796),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _PartyPopper extends StatelessWidget {
  const _PartyPopper();

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const ShapeDecoration(
        shape: CircleBorder(),
        color: Color(0xFFF6F6F9),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Image.asset(
          'assets/images/party_popper.png',
          height: 44.0,
          width: 44.0,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class _BackToHotelScreenButton extends StatelessWidget {
  const _BackToHotelScreenButton();

  @override
  Widget build(BuildContext context) {
    return HBottomButtonSheet(
      text: 'Супер!',
      onPressed: () => const HotelScreenRoute().go(context),
    );
  }
}
