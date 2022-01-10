import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wms_app/screen/bottom_nav_screen_body/water/top_up_add_water_screens/top_up_add_water_first_screen.dart';
import 'package:wms_app/screen/profile_screen.dart';
import 'package:wms_app/screen/profile_screen_body.dart';
import 'package:wms_app/screen/utility_management_system/top_up_screen_body.dart';
import 'package:wms_app/util/management_system.dart';
import 'package:wms_app/widgets/drawer/main_drawer.dart';
import 'package:wms_app/widgets/profile/action_profile.dart';
import 'bottom_nav_screen_body/electricity/top_up_add_electricity_screens/top_up_add_electricity_first_screen.dart';
import 'bottom_nav_screen_body/gas/top_up_add_gas_screens/top_up_add_gas_first_screen.dart';
import 'bottom_nav_screen_body/support_screen_body.dart';
import 'utility_management_system/dashboard_screen_body.dart';
import 'utility_management_system/usage_screen_body.dart';

class BottomNavigationControllerScreen extends StatefulWidget {
  const BottomNavigationControllerScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationControllerScreenState createState() =>
      _BottomNavigationControllerScreenState();
}

class _BottomNavigationControllerScreenState
    extends State<BottomNavigationControllerScreen> {
  late List<Map<String, dynamic>> _pages;
  late Map<ManagementSystem, Color> _mSystemActiveColor;
  late Map<ManagementSystem, String> _mSystemTopUpAddRoute;

  int? _selectedPageIndex = 0;
  ManagementSystem? _mSystem;
  var isInit = true;

  @override
  void didChangeDependencies() {
    if (isInit) {
      var args = ModalRoute.of(context)!.settings.arguments as ScreenArguments?;
      args ??= ScreenArguments(system: ManagementSystem.water, index: 0);
      _mSystem = args.system;
      // _mSystem ??= ManagementSystem.water;
      // print('_mSystem: $_mSystem');
      _pages[0]['page'] = DashboardScreenBody(
        system: _mSystem!,
      );
      _pages[1]['page'] = UsageScreenBody(
        system: _mSystem!,
      );
      _pages[2]['page'] = TopUpScreenBody(
        system: _mSystem!,
      );
      _selectedPageIndex = args.index;
      if (_selectedPageIndex != null) {
        _selectPage(_selectedPageIndex!);
      } else {
        _selectedPageIndex = 0;
      }
    }
    isInit = false;
    super.didChangeDependencies();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  void initState() {
    _pages = [
      {
        'page': const DashboardScreenBody(),
        'title': '',
        'color': const Color.fromRGBO(38, 70, 83, 1),
        'hasProfileIcon': true
      },
      {
        'page': const UsageScreenBody(),
        'title': 'Usage',
        'color': const Color.fromRGBO(38, 70, 83, 1),
        'hasProfileIcon': true
      },
      {
        'page': const TopUpScreenBody(),
        'title': 'Top Up',
        'color': const Color.fromRGBO(38, 70, 83, 1),
        'hasProfileIcon': true
      },
      {
        'page': const ProfileScreenBody(),
        'title': 'Profile',
        'color': const Color.fromRGBO(38, 70, 83, 1),
        'hasProfileIcon': false
      },
      {
        'page': const SupportScreenBody(),
        'title': 'Support',
        'color': const Color.fromRGBO(42, 157, 143, 1),
        'hasProfileIcon': false,
      },
    ];

    _mSystemActiveColor = {
      ManagementSystem.water: const Color.fromRGBO(42, 157, 143, 1),
      ManagementSystem.electricity: const Color.fromRGBO(69, 62, 107, 1),
      ManagementSystem.gas: const Color.fromRGBO(231, 111, 81, 1)
    };

    _mSystemTopUpAddRoute = {
      ManagementSystem.water: TopUpAddWaterFirstScreen.routeName,
      ManagementSystem.electricity: TopUpAddElectricityFirstScreen.routeName,
      ManagementSystem.gas: TopUpAddGasFirstScreen.routeName
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool hasProfile = _pages[_selectedPageIndex!]['hasProfileIcon'] as bool;
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromRGBO(38, 70, 83, 1)),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          _pages[_selectedPageIndex!]['title'] as String,
          style: TextStyle(
              fontSize: 20,
              color: _pages[_selectedPageIndex!]['color'] as Color,
              fontWeight: FontWeight.bold),
        ),
        actions: hasProfile
            ? [
                ActionProfile(handler: () {
                  // Navigator.of(context).pushNamed(ProfileScreen.routeName);
                  Navigator.of(context).pushReplacementNamed('/',
                      // arguments: {'system': _mSystem, 'index': 0}
                      arguments: ScreenArguments(system: _mSystem!, index: 3));
                })
              ]
            : null,
      ),
      // drawer: _selectedPageIndex == 0 ? const MainDrawer() : null,
      drawer: const MainDrawer(),
      body: _pages[_selectedPageIndex!]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: (() {
          if (_selectedPageIndex == 4) {
            return Color.fromRGBO(231, 111, 81, 1);
          } else if (_selectedPageIndex == 3) {
            return Color.fromRGBO(42, 157, 143, 1);
          } else {
            return _mSystemActiveColor[_mSystem];
          }
        }()),
        unselectedItemColor: Color.fromRGBO(164, 164, 164, 1),
        selectedLabelStyle:
            TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
        unselectedLabelStyle:
            TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
        type: BottomNavigationBarType.fixed,
        onTap: _selectPage,
        currentIndex: _selectedPageIndex!,
        // type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              "assets/icons/bottom_nav/ic_dashboard_active.svg",
              color: _mSystemActiveColor[_mSystem],
            ),
            backgroundColor: Colors.white,
            icon: SvgPicture.asset(
              "assets/icons/bottom_nav/ic_dashboard.svg",
              color: Color.fromRGBO(172, 172, 172, 1),
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              "assets/icons/bottom_nav/ic_usage_active.svg",
              color: _mSystemActiveColor[_mSystem],
            ),
            backgroundColor: Colors.white,
            icon: SvgPicture.asset(
              "assets/icons/bottom_nav/ic_usage.svg",
              color: Color.fromRGBO(172, 172, 172, 1),
            ),
            label: 'Usage',
          ),
          BottomNavigationBarItem(
            activeIcon: Stack(
              children: [
                SvgPicture.asset(
                  "assets/icons/bottom_nav/ic_top_up_active.svg",
                  color: _mSystemActiveColor[_mSystem],
                ),
                const Positioned(
                  bottom: 1,
                  left: 1.5,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 13,
                  ),
                )
              ],
            ),
            backgroundColor: Colors.green,
            icon: SvgPicture.asset(
              "assets/icons/bottom_nav/ic_top_up.svg",
              color: Color.fromRGBO(172, 172, 172, 1),
            ),
            label: 'Top up',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              "assets/icons/bottom_nav/ic_profile_bn_active.svg",
              // color: Color.fromRGBO(42, 157, 143, 1),
            ),
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.person_outline_rounded,
              size: 25,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
                "assets/icons/bottom_nav/ic_support_active.svg"),
            backgroundColor: Colors.white,
            icon: SvgPicture.asset(
              "assets/icons/bottom_nav/ic_support.svg",
              color: Color.fromRGBO(172, 172, 172, 1),
            ),
            label: 'Support',
          ),
        ],
      ),
      floatingActionButton: _selectedPageIndex == 2
          ? FloatingActionButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  _mSystemTopUpAddRoute[_mSystem]!,
                );
              },
              backgroundColor: _mSystemActiveColor[_mSystem],
              child: const Icon(
                Icons.add,
                size: 40,
              ),
            )
          : null,
    );
  }
}

class ScreenArguments {
  final ManagementSystem system;
  final int index;

  ScreenArguments({required this.system, required this.index});
}
