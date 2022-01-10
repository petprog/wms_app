import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wms_app/widgets/dashboard/dashboard_payment_item_status.dart';
import 'package:wms_app/widgets/dashboard/dashboard_payment_item_two_text.dart';

class DashboardPaymentItem extends StatelessWidget {
  final String lastPaymentDate;
  final String totalEnergy;
  final String amount;
  final String status;

  const DashboardPaymentItem(
      {Key? key,
      required this.lastPaymentDate,
      required this.totalEnergy,
      required this.amount,
      required this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset("assets/icons/home/ic_home_rate.svg"),
          DashBoardPaymentItemTwoText(
              textOne: lastPaymentDate, textTwo: "Last Payment"),
          DashBoardPaymentItemTwoText(
              textOne: totalEnergy, textTwo: "Total KWh"),
          DashBoardPaymentItemTwoText(textOne: 'N$amount', textTwo: "Amount"),
          DashboardPaymentItemStatus(
            status: status,
            backgroundColor: Color.fromRGBO(201, 255, 248, 1),
            statusColor: Color.fromRGBO(38, 70, 83, 1),
          ),
          // SizedBox(
          //   width: 2,
          // ),
          Icon(Icons.more_vert, size: 10)
        ],
      ),
    );
  }
}
