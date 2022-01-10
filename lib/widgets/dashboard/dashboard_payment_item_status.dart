import 'package:flutter/material.dart';

class DashboardPaymentItemStatus extends StatelessWidget {
  final String status;
  final Color backgroundColor;
  final Color statusColor;

  const DashboardPaymentItemStatus(
      {Key? key,
      required this.status,
      required this.backgroundColor,
      required this.statusColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        status,
        style: TextStyle(fontSize: 8, color: statusColor),
      ),
      padding: EdgeInsets.symmetric(horizontal: 9, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(2)),
          color: backgroundColor),
    );
  }
}
