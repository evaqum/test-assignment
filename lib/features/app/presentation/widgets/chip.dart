import 'package:flutter/material.dart';

const kDefaultChipPadding = EdgeInsets.symmetric(
  horizontal: 10.0,
  vertical: 5.0,
);

class HChip extends StatelessWidget {
  final Color foregroundColor;
  final Color backgroundColor;
  final Widget child;
  final bool disablePadding;

  const HChip({
    super.key,
    required this.foregroundColor,
    required this.backgroundColor,
    required this.child,
    this.disablePadding = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = DefaultTextStyle.of(context).style;

    Widget wrappedChild = Theme(
      data: theme.copyWith(
        iconTheme: theme.iconTheme.copyWith(
          color: foregroundColor,
        ),
      ),
      child: DefaultTextStyle(
        style: textStyle.copyWith(
          color: foregroundColor,
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
        child: child,
      ),
    );

    if (!disablePadding) {
      wrappedChild = Padding(
        padding: kDefaultChipPadding,
        child: wrappedChild,
      );
    }

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: backgroundColor,
      ),
      child: wrappedChild,
    );
  }
}
