import 'package:flutter/material.dart';
import 'package:wms_app/screen/backup_sceens/top_up_add/top_up_add_second_screen.dart';
import 'package:wms_app/widgets/top_up_add/top_up_add_amount_unit_tab_controller.dart';

class TopUpAddFirstScreen extends StatefulWidget {
  static const routeName = "/top_up_add_first_screen";
  const TopUpAddFirstScreen({Key? key}) : super(key: key);

  @override
  _TopUpAddFirstScreenState createState() => _TopUpAddFirstScreenState();
}

class _TopUpAddFirstScreenState extends State<TopUpAddFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return const TopUpAddAmountUnitTabController(
      mainColor: Color.fromRGBO(42, 157, 143, 1),
      route: TopUpAddSecondScreen.routeName,
    );
  }
}
