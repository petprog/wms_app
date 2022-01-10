import 'package:flutter/material.dart';

class LabelBoxColorText extends StatelessWidget {
  final Color labelBoxColor;
  final String labelText;
  final TextStyle labelStyle;

  const LabelBoxColorText({
    Key? key,
    required this.labelBoxColor,
    required this.labelText,
    this.labelStyle = const TextStyle(fontSize: 10),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          color: labelBoxColor,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          labelText,
          style: labelStyle,
        )
      ],
    );
  }
}
