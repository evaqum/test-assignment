import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../theme.dart';

class HScaffold extends StatelessWidget {
  final Widget body;
  final bool applyAppBarColorToBackground;

  const HScaffold({
    super.key,
    required this.body,
    this.applyAppBarColorToBackground = false,
  });

  @override
  Widget build(BuildContext context) {
    late final appBarColor = Theme.of(context).appBarTheme.backgroundColor;

    return Scaffold(
      backgroundColor: applyAppBarColorToBackground ? appBarColor : null,
      body: DefaultTextStyle.merge(
        style: HotelAppTheme.textStyle,
        child: body,
      ),
    );
  }
}

class HScaffoldSliverBody extends StatelessWidget {
  final Widget body;

  const HScaffoldSliverBody({
    super.key,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return SliverStack(
      children: [
        SliverPositioned.fill(
          child: ColoredBox(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        body,
      ],
    );
  }
}
