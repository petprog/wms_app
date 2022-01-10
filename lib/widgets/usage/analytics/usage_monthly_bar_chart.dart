import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class UsageMonthlyBarChart extends StatefulWidget {
  final Color mainColor;
  const UsageMonthlyBarChart({Key? key, required this.mainColor})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => UsageMonthlyBarChartState();
}

class UsageMonthlyBarChartState extends State<UsageMonthlyBarChart> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: AspectRatio(
          aspectRatio: 2,
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: BarChart(
                        mainBarData(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        width: 60,
        height: 20,
        child: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'KWH',
            style: TextStyle(fontSize: 12, color: Colors.black54),
          ),
        ),
      ),
    ]);
  }

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    bool isTouched = false,
    Color barColor = const Color.fromRGBO(42, 157, 143, 1),
    double width = 15,
    List<int> showTooltips = const [],
  }) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          y: isTouched ? y + 1 : y,
          colors: isTouched ? [Colors.yellow] : [barColor],
          width: width,
          borderSide: isTouched
              ? BorderSide(color: Colors.yellow, width: 1)
              : const BorderSide(color: Colors.white, width: 0),
          backDrawRodData: BackgroundBarChartRodData(
            show: false,
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(5, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, 5,
                isTouched: i == touchedIndex, barColor: widget.mainColor);
          case 1:
            return makeGroupData(1, 6.5,
                isTouched: i == touchedIndex, barColor: widget.mainColor);
          case 2:
            return makeGroupData(2, 10,
                isTouched: i == touchedIndex, barColor: widget.mainColor);
          case 3:
            return makeGroupData(3, 10,
                isTouched: i == touchedIndex, barColor: widget.mainColor);
          case 4:
            return makeGroupData(4, 15,
                isTouched: i == touchedIndex, barColor: widget.mainColor);
          default:
            return throw Error();
        }
      });

  BarChartData mainBarData() {
    return BarChartData(
      maxY: 20,
      minY: 0,
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: Colors.blueGrey,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              String weekDay;
              switch (group.x.toInt()) {
                case 0:
                  weekDay = 'Week 1';
                  break;
                case 1:
                  weekDay = 'Week 2';
                  break;
                case 2:
                  weekDay = 'Week 3';
                  break;
                case 3:
                  weekDay = 'Week 4';
                  break;
                case 4:
                  weekDay = 'Week 5';
                  break;
                default:
                  throw Error();
              }
              return BarTooltipItem(
                weekDay + '\n',
                const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: (rod.y - 1).toString(),
                    style: const TextStyle(
                      color: Colors.yellow,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              );
            }),
        touchCallback: (FlTouchEvent event, barTouchResponse) {
          setState(() {
            if (!event.isInterestedForInteractions ||
                barTouchResponse == null ||
                barTouchResponse.spot == null) {
              touchedIndex = -1;
              return;
            }
            touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
          });
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context, value) => TextStyle(
              color: widget.mainColor,
              fontWeight: FontWeight.bold,
              fontSize: 11),
          margin: 16,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return 'Week 1';
              case 1:
                return 'Week 2';
              case 2:
                return 'Week 3';
              case 3:
                return 'Week 4';
              case 4:
                return 'Week 5';
              default:
                return '';
            }
          },
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context, value) => TextStyle(
              color: widget.mainColor,
              fontWeight: FontWeight.bold,
              fontSize: 12),
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return '0';
              case 5:
                return '20';
              case 10:
                return '40';
              case 20:
                return '80';
              default:
                return '';
            }
          },
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
      gridData: FlGridData(show: false),
    );
  }
}
