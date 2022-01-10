import 'package:flutter/material.dart';
import 'package:wms_app/screen/bottom_nav_screen_body/gas/top_up_add_gas_screens/top_up_add_gas_second_screen.dart';
import 'package:wms_app/widgets/top_up_add/top_up_add_amount_unit_tab_controller.dart';

class TopUpAddGasFirstScreen extends StatefulWidget {
  static const routeName = "/top_up_add_gas_first_screen";
  const TopUpAddGasFirstScreen({Key? key}) : super(key: key);

  @override
  _TopUpAddGasFirstScreenState createState() => _TopUpAddGasFirstScreenState();
}

class _TopUpAddGasFirstScreenState extends State<TopUpAddGasFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return const TopUpAddAmountUnitTabController(
      mainColor: Color.fromRGBO(231, 111, 81, 1),
      route: TopUpAddGasSecondScreen.routeName,
    );
  }
}
