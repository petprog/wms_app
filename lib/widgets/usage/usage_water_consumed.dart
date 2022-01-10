import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UsageWaterConsumed extends StatelessWidget {
  final String duration;
  final String rate;
  final Color energyColorText;
  const UsageWaterConsumed(
      {Key? key,
      required this.duration,
      required this.rate,
      required this.energyColorText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/usage/ic_usage_water_consumed.svg"),
          SizedBox(
            width: 16,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Water Consumed",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color.fromRGBO(38, 70, 83, 1))),
            Text("22 Nov - 27 Nov"),
          ]),
          Spacer(),
          Column(
            children: [
              Text(
                "$rate/Liter",
                style: TextStyle(
                    fontSize: 16,
                    color: energyColorText,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
