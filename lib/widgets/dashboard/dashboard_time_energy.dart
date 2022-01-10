import 'package:flutter/material.dart';

class DashboardTimeEnergy extends StatelessWidget {
  final String time;
  final String energy;
  final Color timeColor;
  final Color energyColor;

  const DashboardTimeEnergy(
      {Key? key,
      required this.time,
      required this.energy,
      required this.timeColor,
      required this.energyColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          time,
          style: TextStyle(color: timeColor, fontSize: 10),
        ),
        Text(energy,
            style: TextStyle(
                color: energyColor, fontSize: 14, fontWeight: FontWeight.bold))
      ],
    );
  }
}
