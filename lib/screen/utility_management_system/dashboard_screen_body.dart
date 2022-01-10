import 'package:flutter/material.dart';
import 'package:wms_app/screen/bottom_nav_screen_body/electricity/dashboard_electricity_screen_body.dart';
import 'package:wms_app/screen/bottom_nav_screen_body/gas/dashboard_gas_screen_body.dart';
import 'package:wms_app/screen/bottom_nav_screen_body/water/dashboard_water_screen_body.dart';
import 'package:wms_app/util/management_system.dart';

class DashboardScreenBody extends StatelessWidget {
  final ManagementSystem system;
  const DashboardScreenBody({Key? key, this.system = ManagementSystem.water})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (system == ManagementSystem.water) {
      return const HomeWaterScreenBody();
    } else if (system == ManagementSystem.electricity) {
      return const HomeElectricityScreenBody();
    } else {
      return const HomeGasScreenBody();
    }
  }
}
