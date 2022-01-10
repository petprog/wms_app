import 'package:flutter/material.dart';

class TopUpCardDetailCardRightText extends StatelessWidget {
  final String text;
  final Color textColor;
  final FontWeight textFontWeight;
  const TopUpCardDetailCardRightText(
      {Key? key,
      required this.text,
      required this.textColor,
      this.textFontWeight = FontWeight.normal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: textColor, fontSize: 14, fontWeight: textFontWeight),
    );
  }
}
