import 'package:flutter/material.dart';
import 'package:wms_app/widgets/usage/usage_monthly_tab.dart';
import 'package:wms_app/widgets/usage/usage_weekly_tab.dart';
import 'package:wms_app/widgets/usage/usage_yearly_tab.dart';

class UsageWeeklyMonthlyYearlyTabController extends StatelessWidget {
  final Color primaryColor;
  const UsageWeeklyMonthlyYearlyTabController(
      {Key? key, required this.primaryColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Column(children: [
            TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3,
              indicatorColor: primaryColor,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelColor: Color.fromRGBO(127, 127, 127, 1),
              labelColor: primaryColor,
              tabs: [
                Tab(
                  text: 'Weekly',
                ),
                Tab(
                  text: 'Monthly',
                ),
                Tab(
                  text: 'Yearly',
                ),
              ],
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            UsageWeeklyTab(
              primaryColor: primaryColor,
            ),
            UsageMonthlyTab(
              primaryColor: primaryColor,
            ),
            UsageYearlyTab(
              primaryColor: primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
