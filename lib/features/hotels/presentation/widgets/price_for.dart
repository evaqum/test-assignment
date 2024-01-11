import 'package:flutter/material.dart';

import '../../../../utils/money_format.dart';

class HPriceFor extends StatelessWidget {
  final double price;
  final String priceFor;
  final bool isMinimalPrice;

  HPriceFor({
    super.key,
    required this.price,
    required this.priceFor,
    this.isMinimalPrice = false,
  });

  final _buffer = StringBuffer();
  String get _effectivePriceString {
    _buffer.clear();

    if (isMinimalPrice) {
      _buffer.write('от ');
    }

    _buffer.write('${price.formatMoney()} ₽ ');
    return _buffer.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(
        text: _effectivePriceString,
        style: const TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w600,
        ),
      ),
      TextSpan(
        text: priceFor,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          color: Color(0xFF828796),
        ),
      ),
    ]));
  }
}
