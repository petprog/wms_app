import 'package:flutter/material.dart';
import 'top_up_detail_card_left_text.dart';
import 'top_up_detail_card_right_text.dart';

class TopUpDetailsCard extends StatelessWidget {
  final String name;
  final String phoneNumber;
  final String estate;
  final String meterNumber;
  final String meterType;
  final Color textColor;
  final Color cardBackgroundColor;

  const TopUpDetailsCard(
      {Key? key,
      required this.name,
      required this.phoneNumber,
      required this.estate,
      required this.meterNumber,
      required this.meterType,
      required this.textColor,
      required this.cardBackgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: cardBackgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          Row(
            children: [
              TopUpCardDetailCardLeftText(
                text: "Name",
                textColor: textColor,
              ),
              Spacer(),
              TopUpCardDetailCardRightText(
                text: name,
                textColor: textColor,
                textFontWeight: FontWeight.bold,
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              TopUpCardDetailCardLeftText(
                text: "Phone number",
                textColor: textColor,
              ),
              Spacer(),
              TopUpCardDetailCardRightText(
                text: phoneNumber,
                textColor: textColor,
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              TopUpCardDetailCardLeftText(
                text: "Estate",
                textColor: textColor,
              ),
              Spacer(),
              TopUpCardDetailCardRightText(
                textColor: textColor,
                text: estate,
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              TopUpCardDetailCardLeftText(
                text: "Meter Number",
                textColor: textColor,
              ),
              Spacer(),
              TopUpCardDetailCardRightText(
                text: meterNumber,
                textColor: textColor,
                textFontWeight: FontWeight.bold,
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              TopUpCardDetailCardLeftText(
                text: "Meter Type",
                textColor: textColor,
              ),
              Spacer(),
              TopUpCardDetailCardRightText(
                textColor: textColor,
                text: meterType,
              )
            ],
          ),
        ],
      ),
    );
  }
}
