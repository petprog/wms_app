import 'package:flutter/material.dart';

class DashBoardPaymentItemTwoText extends StatelessWidget {
  final String textOne;
  final String textTwo;
  const DashBoardPaymentItemTwoText(
      {Key? key, required this.textOne, required this.textTwo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        textOne,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 11,
            color: Color.fromRGBO(38, 70, 83, 1)),
      ),
      Text(
        textTwo,
        style: TextStyle(fontSize: 7, color: Color.fromRGBO(191, 191, 191, 1)),
      )
    ]);
  }
}
