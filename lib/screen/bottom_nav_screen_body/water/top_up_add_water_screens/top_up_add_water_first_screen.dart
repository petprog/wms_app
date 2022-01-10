import 'package:flutter/material.dart';
import 'package:wms_app/screen/bottom_nav_screen_body/water/top_up_add_water_screens/top_up_add_water_second_screen.dart';
import 'package:wms_app/widgets/top_up_add/top_up_add_amount_unit_tab_controller.dart';

class TopUpAddWaterFirstScreen extends StatefulWidget {
  static const routeName = "/top_up_add_water_first_screen";
  const TopUpAddWaterFirstScreen({Key? key}) : super(key: key);

  @override
  _TopUpAddWaterFirstScreenState createState() =>
      _TopUpAddWaterFirstScreenState();
}

class _TopUpAddWaterFirstScreenState extends State<TopUpAddWaterFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return const TopUpAddAmountUnitTabController(
      mainColor: Color.fromRGBO(38, 70, 83, 1),
      route: TopUpAddWaterSecondScreen.routeName,
    );
  }
}
