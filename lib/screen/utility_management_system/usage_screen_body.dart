import 'package:flutter/material.dart';
import 'package:wms_app/screen/bottom_nav_screen_body/electricity/usage_electricity_screen_body.dart';
import 'package:wms_app/screen/bottom_nav_screen_body/gas/usage_gas_screen_body.dart';
import 'package:wms_app/screen/bottom_nav_screen_body/water/usage_water_screen_body.dart';
import 'package:wms_app/util/management_system.dart';

class UsageScreenBody extends StatelessWidget {
  final ManagementSystem system;
  const UsageScreenBody({Key? key, this.system = ManagementSystem.water})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (system == ManagementSystem.water) {
      return const UsageWaterScreenBody();
    } else if (system == ManagementSystem.electricity) {
      return const UsageElectricityScreenBody();
    } else {
      return const UsageGasScreenBody();
    }
  }
}
