import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardSwitchMeter extends StatefulWidget {
  final List<Color> backgroundColors;
  final Color turnOnButtonColor;
  final Color switchMeterTextColor;
  const DashboardSwitchMeter(
      {Key? key,
      required this.backgroundColors,
      required this.turnOnButtonColor,
      required this.switchMeterTextColor})
      : super(key: key);

  @override
  State<DashboardSwitchMeter> createState() => _DashboardSwitchMeterState();
}

class _DashboardSwitchMeterState extends State<DashboardSwitchMeter> {
  bool isTurnOn = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              widget.backgroundColors[0],
              widget.backgroundColors[1],
            ],
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset('assets/icons/home/ic_home_quill.svg'),
                Spacer(),
              ],
            ),
            SizedBox(
              child: Text(
                "Switch meter off & save 8%",
                softWrap: true,
                style: TextStyle(color: widget.switchMeterTextColor),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isTurnOn = !isTurnOn;
                });
              },
              child: Text(
                isTurnOn ? "Turn off" : 'Turn on',
                style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                primary: widget.turnOnButtonColor,
              ),
            ),
          ],
        ));
  }
}
