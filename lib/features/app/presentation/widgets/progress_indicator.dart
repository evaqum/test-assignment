import 'package:flutter/material.dart';

class HCircularProgressIndicator extends StatelessWidget {
  final double diameter;
  final double? value;

  const HCircularProgressIndicator({
    super.key,
    this.diameter = 36.0,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: diameter,
      child: CircularProgressIndicator(
        value: value,
      ),
    );
  }
}

class HSliverCenteredProgressIndicator extends StatelessWidget {
  const HSliverCenteredProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      child: Center(
        child: HCircularProgressIndicator(),
      ),
    );
  }
}
