import 'package:flutter/material.dart';
import 'package:wms_app/screen/bottom_nav_screen_body/gas/top_up_add_gas_screens/top_up_add_gas_first_screen.dart';
import 'package:wms_app/widgets/analytics/analytics_usage_above_below_average.dart';
import 'package:wms_app/widgets/dashboard/dashboard_payment_item.dart';
import 'package:wms_app/widgets/dashboard/dashboard_remaining.dart';
import 'package:wms_app/widgets/dashboard/dashboard_switch_meter.dart';
import 'package:wms_app/widgets/dashboard/dashboard_time_energy.dart';
import 'package:wms_app/widgets/profile/action_profile.dart';

class HomeGasScreenBody extends StatefulWidget {
  const HomeGasScreenBody({Key? key}) : super(key: key);

  @override
  _HomeGasScreenBodyState createState() => _HomeGasScreenBodyState();
}

class _HomeGasScreenBodyState extends State<HomeGasScreenBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Gas',
              style: TextStyle(
                  color: Color.fromRGBO(185, 74, 46, 1),
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'Good morning, Elizabeth',
              style: TextStyle(color: Color.fromRGBO(244, 162, 97, 1)),
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Expanded(
                  child: DashboardRemaining(
                      unitType: 'Ltr',
                      rechargeButtoncolor: Color.fromRGBO(233, 196, 106, 1),
                      remainingTextcolor: Color.fromRGBO(231, 111, 81, 1),
                      route: TopUpAddGasFirstScreen.routeName),
                ),
                Expanded(
                  child: DashboardSwitchMeter(
                    switchMeterTextColor: Color.fromRGBO(229, 229, 229, 1),
                    backgroundColors: [
                      Color.fromRGBO(231, 111, 81, 1),
                      Color.fromRGBO(244, 162, 97, 1)
                    ],
                    turnOnButtonColor: Color.fromRGBO(255, 220, 193, 1),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                DashboardTimeEnergy(
                  time: "Today",
                  energy: '17.92Ltr',
                  timeColor: Color.fromRGBO(233, 196, 106, 1),
                  energyColor: Color.fromRGBO(80, 80, 80, 1),
                ),
                DashboardTimeEnergy(
                  time: "Week",
                  energy: '37.92Ltr',
                  timeColor: Color.fromRGBO(231, 111, 81, 1),
                  energyColor: Color.fromRGBO(38, 70, 83, 1),
                ),
                DashboardTimeEnergy(
                  time: "Month",
                  energy: '321Ltr',
                  timeColor: Color.fromRGBO(231, 111, 81, 1),
                  energyColor: Color.fromRGBO(38, 70, 83, 1),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Usage',
              style: TextStyle(
                  color: Color.fromRGBO(38, 70, 83, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            const AnalyticsUsageAboveBelowAverage(
              aboveAverageColor: Color.fromRGBO(231, 111, 81, 1),
              belowAverageColor: Color.fromRGBO(255, 134, 0, 1),
              aboveAverageText: '55.0',
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Payments',
              style: TextStyle(
                  color: Color.fromRGBO(38, 70, 83, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (ctx, i) => const DashboardPaymentItem(
                  lastPaymentDate: "22 Nov, 21",
                  totalEnergy: "492Ltr",
                  amount: "2000",
                  status: "Paid",
                ),
                itemCount: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
