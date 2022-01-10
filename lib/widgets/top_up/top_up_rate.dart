import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopUpRate extends StatelessWidget {
  final String duration;
  final String koboPerLiter;
  final Color rateIconColor;
  final Color rateTextColor;

  const TopUpRate(
      {Key? key,
      required this.duration,
      required this.koboPerLiter,
      required this.rateIconColor,
      required this.rateTextColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromRGBO(235, 242, 245, 1)),
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rate",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(38, 70, 83, 1),
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    duration,
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Poppins",
                      color: Color.fromRGBO(187, 187, 187, 1),
                    ),
                  ),
                ],
              ),
              Spacer(),
              SvgPicture.asset(
                "assets/icons/top_up/ic_top_up_rate.svg",
                color: rateIconColor,
              )
            ],
          ),
          Row(
            children: [
              Text(
                "13,55",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                  color: rateTextColor,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "kobo/Liter",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color.fromRGBO(112, 112, 112, 1),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
