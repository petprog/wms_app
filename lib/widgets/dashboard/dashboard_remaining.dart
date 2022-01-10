import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardRemaining extends StatelessWidget {
  final Color remainingTextcolor;
  final Color rechargeButtoncolor;
  final String unitType;
  final bool hasIcon;
  final String route;

  const DashboardRemaining(
      {Key? key,
      required this.remainingTextcolor,
      required this.rechargeButtoncolor,
      required this.unitType,
      this.hasIcon = true,
      required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          border:
              Border.all(width: 1, color: Color.fromRGBO(208, 231, 241, 1))),
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.width <= 320 ? 10 : 20,
        vertical: 10,
      ),
      margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '78.9',
                style: TextStyle(fontSize: 40, color: remainingTextcolor),
              ),
              Column(
                children: hasIcon
                    ? [
                        Text(
                          unitType,
                          style: TextStyle(
                            color: remainingTextcolor,
                          ),
                        ),
                        SvgPicture.asset("assets/icons/home/ic_home_drop.svg")
                      ]
                    : [
                        Text(
                          unitType,
                          style: TextStyle(color: remainingTextcolor),
                        ),
                      ],
              )
            ],
          ),
          Text(
            "Remaining",
            style: TextStyle(color: Color.fromRGBO(189, 200, 199, 1)),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(route);
            },
            child: Text(
              "Recharge Now",
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1), fontSize: 12),
            ),
            style: ElevatedButton.styleFrom(primary: rechargeButtoncolor),
          ),
        ],
      ),
    );
  }
}
