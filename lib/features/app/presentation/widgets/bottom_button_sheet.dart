import 'package:flutter/material.dart';

class HBottomButtonSheet extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const HBottomButtonSheet({
    required this.text,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.viewInsetsOf(context).bottom;
    final padding = const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 12.0,
        ) +
        EdgeInsets.only(bottom: bottomPadding);

    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Color(0xFFE8E9EC),
            width: 1.0,
          ),
        ),
      ),
      child: Padding(
        padding: padding,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(text),
        ),
      ),
    );
  }
}
