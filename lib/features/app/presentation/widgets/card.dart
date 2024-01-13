import 'package:flutter/material.dart';

import '../../icons.dart';
import 'fitted_icon.dart';

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
  final Clip clipBehavior;

  const HCard({
    super.key,
    required this.child,
    this.cardShape = HCardShape.allRounded,
    this.padding = _defaultPadding,
    this.borderRadius = _defaultBorderRadius,
    this.clipBehavior = Clip.none,
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
    return ClipRRect(
      clipBehavior: clipBehavior,
      borderRadius: _effectiveBorderRadius,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: _effectiveBorderRadius,
        ),
        child: Padding(
          padding: _effectivePadding,
          child: child,
        ),
      ),
    );
  }
}

class HExpandingCard extends StatefulWidget {
  final Widget title;
  final List<Widget> children;
  final double borderRadius;

  const HExpandingCard({
    super.key,
    required this.title,
    this.children = const [],
    this.borderRadius = _defaultBorderRadius,
  });

  @override
  State<HExpandingCard> createState() => _HExpandingCardState();
}

class _HExpandingCardState extends State<HExpandingCard> {
  bool _isExpanded = false;

  void _onExpansionChanged(bool isExpanded) {
    setState(() {
      _isExpanded = isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      onExpansionChanged: _onExpansionChanged,
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_defaultBorderRadius),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_defaultBorderRadius),
      ),
      collapsedBackgroundColor: Colors.white,
      backgroundColor: Colors.white,
      tilePadding: const EdgeInsets.symmetric(horizontal: 16.0),
      childrenPadding: const EdgeInsets.only(
        bottom: 16.0,
        left: 16.0,
        right: 16.0,
        top: 4.0,
      ),
      title: DefaultTextStyle(
        style: DefaultTextStyle.of(context).style.copyWith(
              fontSize: 22.0,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
        child: widget.title,
      ),
      controlAffinity: ListTileControlAffinity.trailing,
      trailing: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: const Color(0x1A0D72FF),
        ),
        child: HFittedIcon.squareBox(
          dimension: 32.0,
          icon: Icon(
            _isExpanded ? HIcons.arrow_up32 : HIcons.arrow_down32,
            color: const Color(0xFF0D72FF),
          ),
        ),
      ),
      children: widget.children,
    );
  }
}
