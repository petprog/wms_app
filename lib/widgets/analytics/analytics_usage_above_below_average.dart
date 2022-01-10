import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:wms_app/widgets/analytics/widgets/label_box_color_text.dart';

class AnalyticsUsageAboveBelowAverage extends StatelessWidget {
  final String aboveAverageText;
  final Color aboveAverageColor;
  final Color belowAverageColor;
  const AnalyticsUsageAboveBelowAverage(
      {Key? key,
      required this.aboveAverageText,
      required this.aboveAverageColor,
      required this.belowAverageColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 130,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Spacer(),
              LabelBoxColorText(
                  labelBoxColor: aboveAverageColor, labelText: "Above Average"),
              SizedBox(
                height: 4,
              ),
              LabelBoxColorText(
                  labelBoxColor: belowAverageColor, labelText: "Below Average"),
              Spacer(),
            ],
          ),
          Spacer(),
          CircularPercentIndicator(
            startAngle: 45,
            radius: 120.0,
            lineWidth: 13.0,
            animation: true,
            percent: 0.55,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$aboveAverageText%",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Color.fromRGBO(38, 70, 83, 1),
                  ),
                ),
                const Text(
                  "Above Average",
                  style: TextStyle(
                      fontSize: 10.0, color: Color.fromRGBO(164, 164, 164, 1)),
                )
              ],
            ),
            reverse: true,
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: aboveAverageColor,
            backgroundColor: belowAverageColor,
          )
        ],
      ),
    );
  }
}
