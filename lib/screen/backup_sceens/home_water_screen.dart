import 'package:flutter/material.dart';
import 'package:wms_app/screen/backup_sceens/top_up_add/top_up_add_first_screen.dart';
import 'package:wms_app/widgets/dashboard/dashboard_payment_item.dart';
import 'package:wms_app/widgets/dashboard/dashboard_remaining.dart';
import 'package:wms_app/widgets/dashboard/dashboard_switch_meter.dart';
import 'package:wms_app/widgets/dashboard/dashboard_time_energy.dart';
import 'package:wms_app/widgets/profile/action_profile.dart';

class HomeWaterScreen extends StatefulWidget {
  const HomeWaterScreen({Key? key}) : super(key: key);

  @override
  _HomeWaterScreenState createState() => _HomeWaterScreenState();
}

class _HomeWaterScreenState extends State<HomeWaterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [ActionProfile(handler: () {})],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Water',
            style:
                TextStyle(color: Color.fromRGBO(38, 70, 83, 1), fontSize: 35),
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
            children: const [
              DashboardRemaining(
                unitType: 'Ltr',
                rechargeButtoncolor: Color.fromRGBO(42, 157, 143, 1),
                remainingTextcolor: Color.fromRGBO(231, 111, 81, 1),
                route: TopUpAddFirstScreen.routeName,
              ),
              DashboardSwitchMeter(
                switchMeterTextColor: Color.fromRGBO(229, 229, 229, 1),
                backgroundColors: [
                  Color.fromRGBO(42, 157, 143, 1),
                  Color.fromRGBO(42, 157, 143, 1)
                ],
                turnOnButtonColor: Color.fromRGBO(255, 220, 193, 1),
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
          const Text('Usage'),
          Container(
            height: 50,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Payments'),
          const SizedBox(
            height: 20,
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
        ]),
      ),
    );
  }
}
