import 'package:flutter/material.dart';

class HFittedIcon extends StatelessWidget {
  final Widget icon;
  final BoxFit fit;
  final double? width;
  final double? height;

  const HFittedIcon({
    super.key,
    required this.icon,
    this.fit = BoxFit.contain,
    this.width,
    this.height,
  });

  const HFittedIcon.squareBox({
    super.key,
    required this.icon,
    this.fit = BoxFit.contain,
    double? dimension,
  })  : width = dimension,
        height = dimension;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: FittedBox(
        fit: fit,
        child: icon,
      ),
    );
  }
}
