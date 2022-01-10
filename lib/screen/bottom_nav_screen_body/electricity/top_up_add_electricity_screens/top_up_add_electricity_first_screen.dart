import 'package:flutter/material.dart';
import 'package:wms_app/screen/bottom_nav_screen_body/electricity/top_up_add_electricity_screens/top_up_add_electricity_second_screen.dart';
import 'package:wms_app/widgets/top_up_add/top_up_add_amount_unit_tab_controller.dart';

class TopUpAddElectricityFirstScreen extends StatefulWidget {
  static const routeName = "/top_up_add_electricity_first_screen";
  const TopUpAddElectricityFirstScreen({Key? key}) : super(key: key);

  @override
  _TopUpAddElectricityFirstScreenState createState() =>
      _TopUpAddElectricityFirstScreenState();
}

class _TopUpAddElectricityFirstScreenState
    extends State<TopUpAddElectricityFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return const TopUpAddAmountUnitTabController(
        mainColor: Color.fromRGBO(69, 62, 107, 1),
        route: TopUpAddElectricitySecondScreen.routeName);
  }
}
