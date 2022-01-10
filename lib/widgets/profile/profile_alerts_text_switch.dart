import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileAlertsTextSwitch extends StatelessWidget {
  final String title;
  final bool value;
  final Function(bool) onChangedHander;

  const ProfileAlertsTextSwitch(
      {Key? key,
      required this.title,
      required this.value,
      required this.onChangedHander})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            color: Color.fromRGBO(38, 70, 83, 1),
            fontSize: 14,
            fontWeight: FontWeight.w700),
      ),
      trailing: CupertinoSwitch(
        activeColor: value
            ? Color.fromRGBO(223, 255, 251, 1)
            : Color.fromRGBO(42, 157, 143, 1),
        thumbColor: value
            ? Color.fromRGBO(42, 157, 143, 1)
            : Color.fromRGBO(112, 112, 112, 1),
        trackColor: Color.fromRGBO(239, 239, 239, 1),
        value: value,
        onChanged: onChangedHander,
      ),
    );
  }
}
