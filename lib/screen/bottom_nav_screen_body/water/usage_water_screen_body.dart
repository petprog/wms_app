import 'package:flutter/material.dart';
import 'package:wms_app/widgets/analytics/analytics_usage_above_below_average.dart';
import 'package:wms_app/widgets/usage/usage_water_consumed.dart';
import 'package:wms_app/widgets/usage/usage_weekly_monthly_yearly_tab_controller.dart';

class UsageWaterScreenBody extends StatelessWidget {
  const UsageWaterScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: SizedBox(
        height: screenHeight,
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.55,
              child: UsageWeeklyMonthlyYearlyTabController(
                primaryColor: Color.fromRGBO(42, 157, 143, 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Usage',
                    style: TextStyle(
                        color: Color.fromRGBO(38, 70, 83, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  AnalyticsUsageAboveBelowAverage(
                    aboveAverageColor: Color.fromRGBO(42, 157, 143, 1),
                    belowAverageColor: Color.fromRGBO(255, 134, 0, 1),
                    aboveAverageText: '55.0',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  UsageWaterConsumed(
                    duration: "22 Nov - 27 Nov",
                    rate: "10/2",
                    energyColorText: Color.fromRGBO(42, 157, 143, 1),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
