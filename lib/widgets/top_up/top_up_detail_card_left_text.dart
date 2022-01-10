import 'package:flutter/material.dart';

class TopUpCardDetailCardLeftText extends StatelessWidget {
  final String text;
  final Color textColor;
  const TopUpCardDetailCardLeftText(
      {Key? key, required this.text, required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: textColor, fontSize: 12),
    );
  }
}
