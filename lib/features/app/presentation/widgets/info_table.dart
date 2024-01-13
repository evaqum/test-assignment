import 'package:flutter/material.dart';

import 'space.dart';

class HInfoTableEntry {
  final String title;
  final String value;
  final TextStyle? titleStyle;
  final TextStyle? valueStyle;

  const HInfoTableEntry({
    required this.title,
    required this.value,
    this.titleStyle,
    this.valueStyle,
  });
}

class HInfoTable extends StatelessWidget {
  final int? titleFlex;
  final int? valueFlex;
  final TextAlign? valueAlign;
  final List<HInfoTableEntry> entries;

  const HInfoTable({
    required this.entries,
    this.valueAlign,
    super.key,
    this.titleFlex,
    this.valueFlex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final (i, entry) in entries.indexed) ...[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: titleFlex ?? 4,
                child: DefaultTextStyle.merge(
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF828796),
                  ),
                  child: Text(
                    entry.title,
                    style: entry.titleStyle,
                  ),
                ),
              ),
              const Space.horizontal(8.0),
              Expanded(
                flex: valueFlex ?? 6,
                child: DefaultTextStyle.merge(
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                  child: Text(
                    entry.value,
                    style: entry.valueStyle,
                    textAlign: valueAlign,
                  ),
                ),
              ),
            ],
          ),
          if (i < entries.length - 1) const Space.vertical(16.0),
        ],
      ],
    );
  }
}
