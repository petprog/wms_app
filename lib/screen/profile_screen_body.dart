import 'package:flutter/material.dart';
import 'package:wms_app/widgets/badge.dart';
import 'package:wms_app/widgets/profile/profile_alerts_text_switch.dart';
import 'package:wms_app/widgets/profile/profile_meter_details.dart';

class ProfileScreenBody extends StatefulWidget {
  static const routeName = "/profile";

  const ProfileScreenBody({Key? key}) : super(key: key);

  @override
  State<ProfileScreenBody> createState() => _ProfileScreenBodyState();
}

class _ProfileScreenBodyState extends State<ProfileScreenBody> {
  var isWaterLow = false;
  var isWaterLeak = false;
  var isEnergyLow = false;
  var isGasLow = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                Badge(
                  innerChild: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  radius: 16,
                  child: ClipOval(
                    // child: SizedBox(
                    //   width: 130,
                    //   height: 130,
                    //   child: _isPictureTaken
                    //       ? Image.file(
                    //           _storedImage!,
                    //           fit: BoxFit.cover,
                    //         )
                    //       : Image.network(
                    //           _initValues['profilePictureUrl']!,
                    //           fit: BoxFit.cover,
                    //         ),
                    // ),
                    child: CircleAvatar(
                      backgroundColor: Colors.black26,
                      radius: 52,
                      child: CircleAvatar(
                        radius: 50,
                        child: Icon(
                          Icons.person,
                          size: 100,
                        ),
                      ),
                    ),
                  ),
                  color: const Color.fromRGBO(42, 157, 143, 1),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Okonkwo Kingsley",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color.fromRGBO(38, 70, 83, 1)),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "08107218147",
                  style: TextStyle(color: Color.fromRGBO(38, 70, 83, 1)),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Graceland Estate",
                  style: TextStyle(
                    color: Color.fromRGBO(38, 70, 83, 1),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Meter",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(38, 70, 83, 1)),
                ),
                SizedBox(
                  height: 8,
                ),
                const ProfileMeterDetails(),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Alerts",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(38, 70, 83, 1)),
                ),
                ProfileAlertsTextSwitch(
                  title: "Water low level alert",
                  value: isWaterLow,
                  onChangedHander: (val) {
                    setState(() {
                      isWaterLow = val;
                    });
                  },
                ),
                ProfileAlertsTextSwitch(
                  title: "Water Leakage alert",
                  value: isWaterLeak,
                  onChangedHander: (val) {
                    setState(() {
                      isWaterLeak = val;
                    });
                  },
                ),
                ProfileAlertsTextSwitch(
                  title: "Energy low Level alert",
                  value: isEnergyLow,
                  onChangedHander: (val) {
                    setState(() {
                      isEnergyLow = val;
                    });
                  },
                ),
                ProfileAlertsTextSwitch(
                  title: "Gas low level Alert",
                  value: isGasLow,
                  onChangedHander: (val) {
                    setState(() {
                      isGasLow = val;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
