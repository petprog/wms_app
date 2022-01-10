import 'package:flutter/material.dart';
import 'package:wms_app/screen/bottom_navigation_controller_screen.dart';
import 'package:wms_app/util/management_system.dart';
import 'package:wms_app/widgets/drawer/home_drawer_list_tile.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.only(left: 5),
        color: const Color.fromRGBO(42, 157, 143, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.close,
                      size: 30,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            HomeDrawerListTile(
              text: "Water",
              selectedHandler: () {
                Navigator.of(context).pushReplacementNamed('/',
                    arguments: ScreenArguments(
                        system: ManagementSystem.water, index: 0));
              },
              imagePath: "assets/icons/home_drawer/ic_home_drawer_water.svg",
            ),
            Divider(),
            HomeDrawerListTile(
              text: "Electricity",
              selectedHandler: () {
                Navigator.of(context).pushReplacementNamed('/',
                    arguments: ScreenArguments(
                        system: ManagementSystem.electricity, index: 0));
              },
              imagePath:
                  "assets/icons/home_drawer/ic_home_drawer_electricity.svg",
            ),
            Divider(),
            HomeDrawerListTile(
              text: "Gas",
              selectedHandler: () {
                Navigator.of(context).pushReplacementNamed('/',
                    arguments: ScreenArguments(
                        system: ManagementSystem.gas, index: 0));
              },
              imagePath: "assets/icons/home_drawer/ic_home_drawer_water.svg",
            ),
          ],
        ),
      ),
    );
  }
}
