import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  final double dimension;
  final bool _isHorizontal;

  const Space._(this.dimension, this._isHorizontal);
  const Space.vertical(this.dimension, {super.key}) : _isHorizontal = false;
  const Space.horizontal(this.dimension, {super.key}) : _isHorizontal = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _isHorizontal ? dimension : null,
      height: _isHorizontal ? null : dimension,
    );
  }
}

class SliverSpace extends StatelessWidget {
  final double dimension;
  final bool _isHorizontal;

  const SliverSpace.vertical(this.dimension, {super.key}) : _isHorizontal = false;
  const SliverSpace.horizontal(this.dimension, {super.key}) : _isHorizontal = true;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Space._(dimension, _isHorizontal),
    );
  }
}
