extension MoneyFormatX on num {
  String formatMoney([String divider = ' ']) {
    assert(this >= 0);

    final n = this;
    final b = StringBuffer();

    final wholePart = n.toInt();
    final decimalPart = ((n - wholePart) * 100).round();

    final wholeString = wholePart.toString();

    final firstPartLength = wholeString.length % 3;

    for (var i = 0; i < wholeString.length; i += 1) {
      if ((i - firstPartLength) % 3 == 0 && i != 0) {
        b.write(divider);
      }

      final digit = wholeString[i];
      b.write(digit);
    }

    if (decimalPart > 0) {
      b.write('.');
      b.write('$decimalPart'.padLeft(2, '0'));
    }

    return b.toString();
  }
}
