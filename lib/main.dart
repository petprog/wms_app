import 'package:flutter/material.dart';
import 'package:wms_app/screen/bottom_nav_screen_body/electricity/top_up_add_electricity_screens/top_up_add_electricity_first_screen.dart';
import 'package:wms_app/screen/bottom_nav_screen_body/electricity/top_up_add_electricity_screens/top_up_add_electricity_second_screen.dart';
import 'package:wms_app/screen/bottom_nav_screen_body/electricity/top_up_add_electricity_screens/top_up_add_electricity_third_screen.dart';
import 'package:wms_app/screen/bottom_nav_screen_body/gas/top_up_add_gas_screens/top_up_add_gas_first_screen.dart';
import 'package:wms_app/screen/bottom_nav_screen_body/gas/top_up_add_gas_screens/top_up_add_gas_second_screen.dart';
import 'package:wms_app/screen/bottom_nav_screen_body/gas/top_up_add_gas_screens/top_up_add_gas_third_screen.dart';
import 'package:wms_app/screen/bottom_nav_screen_body/water/top_up_add_water_screens/top_up_add_water_first_screen.dart';
import 'package:wms_app/screen/bottom_nav_screen_body/water/top_up_add_water_screens/top_up_add_water_second_screen.dart';
import 'package:wms_app/screen/bottom_nav_screen_body/water/top_up_add_water_screens/top_up_add_water_third_screen.dart';
import 'package:wms_app/screen/bottom_navigation_controller_screen.dart';
import 'package:wms_app/screen/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(fontFamily: "Trenda");
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: theme.copyWith(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            foregroundColor: Color.fromRGBO(38, 70, 83, 1),
            elevation: 0,
            titleTextStyle: TextStyle(
              // fontFamily: 'IsidoraSans',
              // fontSize: 20,
              color: Color.fromRGBO(17, 62, 130, 1),
            ),
          ),
        ),
        home: const BottomNavigationControllerScreen(),
        routes: {
          ProfileScreen.routeName: (ctx) => const ProfileScreen(),
          TopUpAddWaterFirstScreen.routeName: (ctx) =>
              const TopUpAddWaterFirstScreen(),
          TopUpAddWaterSecondScreen.routeName: (ctx) =>
              const TopUpAddWaterSecondScreen(),
          TopUpAddWaterThirdScreen.routeName: (ctx) =>
              const TopUpAddWaterThirdScreen(),
          TopUpAddGasFirstScreen.routeName: (ctx) =>
              const TopUpAddGasFirstScreen(),
          TopUpAddGasSecondScreen.routeName: (ctx) =>
              const TopUpAddGasSecondScreen(),
          TopUpAddGasThirdScreen.routeName: (ctx) =>
              const TopUpAddGasThirdScreen(),
          TopUpAddElectricityFirstScreen.routeName: (ctx) =>
              const TopUpAddElectricityFirstScreen(),
          TopUpAddElectricitySecondScreen.routeName: (ctx) =>
              const TopUpAddElectricitySecondScreen(),
          TopUpAddElectricityThirdScreen.routeName: (ctx) =>
              const TopUpAddElectricityThirdScreen(),
        });
  }
}
