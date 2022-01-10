import 'package:flutter/material.dart';
import 'package:wms_app/screen/profile_screen.dart';
import 'package:wms_app/widgets/profile/action_profile.dart';
import 'package:wms_app/widgets/top_up_add/top_up_add_amount_tab.dart';
import 'package:wms_app/widgets/top_up_add/top_up_add_unit_tab.dart';

class TopUpAddAmountUnitTabController extends StatelessWidget {
  final String route;
  final Color mainColor;
  const TopUpAddAmountUnitTabController({
    Key? key,
    required this.route,
    required this.mainColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Top Up',
            style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(38, 70, 83, 1),
                fontWeight: FontWeight.bold),
          ),
          actions: [
            ActionProfile(handler: () {
              Navigator.of(context).pushNamed(ProfileScreen.routeName);
            })
          ],
          // automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          bottom: TabBar(
            indicatorWeight: 3,
            indicatorColor: mainColor,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelColor: Color.fromRGBO(127, 127, 127, 1),
            labelColor: mainColor,
            tabs: [
              Tab(
                text: 'Amount',
              ),
              Tab(
                text: 'Unit',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TopUpAddAmountTab(
              route: route,
              mainColor: mainColor,
            ),
            TopUpAddUnitTab(
              route: route,
              mainColor: mainColor,
            ),
          ],
        ),
      ),
    );
  }
}
