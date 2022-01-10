import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileMeterDetails extends StatelessWidget {
  const ProfileMeterDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(240, 240, 240, 0.3),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Meter Number",
            style:
                TextStyle(color: Color.fromRGBO(155, 155, 155, 1), fontSize: 9),
          ),
          Text(
            "634732883734",
            style: TextStyle(color: Color.fromRGBO(5, 5, 9, 1), fontSize: 16),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "Prepaid",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(38, 70, 83, 1)),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(
                    color: Color.fromRGBO(42, 157, 143, 1),
                  ),
                ),
              ),
              const Spacer(),
              SvgPicture.asset("assets/icons/profile/ic_profile_meter.svg")
            ],
          )
        ],
      ),
    );
  }
}
