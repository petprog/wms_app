import 'package:flutter/material.dart';
import 'package:wms_app/screen/bottom_nav_screen_body/electricity/top_up_add_electricity_screens/top_up_add_electricity_first_screen.dart';
import 'package:wms_app/widgets/analytics/analytics_usage_above_below_average.dart';
import 'package:wms_app/widgets/dashboard/dashboard_payment_item.dart';
import 'package:wms_app/widgets/dashboard/dashboard_remaining.dart';
import 'package:wms_app/widgets/dashboard/dashboard_switch_meter.dart';
import 'package:wms_app/widgets/dashboard/dashboard_time_energy.dart';
import 'package:wms_app/widgets/profile/action_profile.dart';

class HomeWaterScreenBody extends StatefulWidget {
  const HomeWaterScreenBody({Key? key}) : super(key: key);

  @override
  _HomeWaterScreenBodyState createState() => _HomeWaterScreenBodyState();
}

class _HomeWaterScreenBodyState extends State<HomeWaterScreenBody> {
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
              'Water',
              style: TextStyle(
                  color: Color.fromRGBO(38, 70, 83, 1),
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'Good morning, Elizabeth',
              style: TextStyle(color: Color.fromRGBO(42, 157, 143, 1)),
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: DashboardRemaining(
                      unitType: 'Ltr',
                      remainingTextcolor: Color.fromRGBO(42, 157, 143, 1),
                      rechargeButtoncolor: Color.fromRGBO(42, 157, 143, 1),
                      route: TopUpAddElectricityFirstScreen.routeName),
                ),
                Expanded(
                  child: DashboardSwitchMeter(
                    switchMeterTextColor: Color.fromRGBO(229, 229, 229, 1),
                    backgroundColors: [
                      Color.fromRGBO(42, 157, 143, 1),
                      Color.fromRGBO(15, 139, 124, 1)
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
                  energy: '17.92kwh',
                  timeColor: Color.fromRGBO(231, 111, 81, 1),
                  energyColor: Color.fromRGBO(38, 70, 83, 1),
                ),
                DashboardTimeEnergy(
                  time: "Week",
                  energy: '37.92kwh',
                  timeColor: Color.fromRGBO(42, 157, 143, 1),
                  energyColor: Color.fromRGBO(38, 70, 83, 1),
                ),
                DashboardTimeEnergy(
                  time: "Month",
                  energy: '321kwh',
                  timeColor: Color.fromRGBO(42, 157, 143, 1),
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
              aboveAverageColor: Color.fromRGBO(42, 157, 143, 1),
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
                  totalEnergy: "492Kwh",
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
