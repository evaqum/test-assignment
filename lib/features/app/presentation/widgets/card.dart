import 'package:flutter/material.dart';

/// Which sides to round. The padding from non-rounded sides is removed.
enum HCardShape {
  topRounded,
  bottomRounded,
  allRounded,
}

const _defaultPadding = EdgeInsets.all(16.0);
const _defaultBorderRadius = 16.0;

class HCard extends StatelessWidget {
  final HCardShape cardShape;
  final EdgeInsets padding;
  final double borderRadius;
  final Widget child;

  const HCard({
    super.key,
    required this.child,
    this.cardShape = HCardShape.allRounded,
    this.padding = _defaultPadding,
    this.borderRadius = _defaultBorderRadius,
  });

  EdgeInsetsGeometry get _effectivePadding {
    return switch (cardShape) {
      HCardShape.allRounded => padding,
      HCardShape.topRounded => padding - EdgeInsets.only(bottom: padding.bottom),
      HCardShape.bottomRounded => padding - EdgeInsets.only(top: padding.top),
    };
  }

  BorderRadiusGeometry get _effectiveBorderRadius {
    final radius = Radius.circular(borderRadius);

    return switch (cardShape) {
      HCardShape.allRounded => BorderRadius.all(radius),
      HCardShape.topRounded => BorderRadius.vertical(top: radius),
      HCardShape.bottomRounded => BorderRadius.vertical(bottom: radius),
    };
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: _effectiveBorderRadius,
      ),
      child: Padding(
        padding: _effectivePadding,
        child: child,
      ),
    );
  }
}
