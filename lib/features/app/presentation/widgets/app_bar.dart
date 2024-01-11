import 'package:flutter/material.dart';

class HSliverAppBar extends StatelessWidget {
  final Widget? title;
  final bool pinned;

  const HSliverAppBar({
    super.key,
    this.title,
    this.pinned = true,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0.0,
      pinned: pinned,
      surfaceTintColor: Colors.white,
      title: title,
    );
  }
}
