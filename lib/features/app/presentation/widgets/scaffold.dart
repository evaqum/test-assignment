import 'package:flutter/material.dart';

import '../../theme.dart';

class HScaffold extends StatelessWidget {
  final Widget body;

  const HScaffold({
    super.key,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTextStyle.merge(
        style: HotelAppTheme.textStyle,
        child: body,
      ),
    );
  }
}
