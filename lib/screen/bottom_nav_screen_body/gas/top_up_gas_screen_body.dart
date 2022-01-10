import 'package:flutter/material.dart';
import 'package:wms_app/widgets/dashboard/dashboard_payment_item.dart';
import 'package:wms_app/widgets/top_up/top_up_details_card.dart';
import 'package:wms_app/widgets/top_up/top_up_rate.dart';

class TopUpGasScreenBody extends StatelessWidget {
  const TopUpGasScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   'Top Up',
            //   style: TextStyle(fontSize: 30),
            // ),
            // SizedBox(
            //   height: 15,
            // ),
            const TopUpDetailsCard(
              name: "Okonkwo Kingsley",
              phoneNumber: "08107218147",
              estate: "Graceland Esatate",
              meterNumber: "63473288374",
              meterType: 'Prepaid',
              textColor: Colors.white,
              cardBackgroundColor: Color.fromRGBO(231, 111, 81, 1),
            ),
            const SizedBox(
              height: 20,
            ),
            const TopUpRate(
              duration: "10-01-2021 - 25-10-2022",
              koboPerLiter: '13,55',
              rateIconColor: Color.fromRGBO(233, 196, 106, 1),
              rateTextColor: Color.fromRGBO(231, 111, 81, 1),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Payments',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(38, 70, 83, 1),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (ctx, i) => const DashboardPaymentItem(
                    lastPaymentDate: "22 Nov, 21",
                    totalEnergy: "492Kwh",
                    amount: "2000",
                    status: "Paid"),
                itemCount: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
