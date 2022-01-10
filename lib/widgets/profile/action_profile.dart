import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActionProfile extends StatelessWidget {
  final Function handler;
  const ActionProfile({Key? key, required this.handler}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        handler();
      },
      child: CircleAvatar(
        backgroundColor: Color.fromRGBO(223, 255, 251, 1),
        radius: 16,
        child: CircleAvatar(
          radius: 15,
          child: SvgPicture.asset("assets/icons/profile/ic_person.svg"),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
