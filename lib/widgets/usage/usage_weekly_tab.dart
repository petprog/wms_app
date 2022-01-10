import 'package:flutter/material.dart';
import 'package:wms_app/widgets/usage/analytics/usage_weekly_line_chart.dart';

class UsageWeeklyTab extends StatefulWidget {
  final Color primaryColor;
  const UsageWeeklyTab({Key? key, required this.primaryColor})
      : super(key: key);

  @override
  State<UsageWeeklyTab> createState() => _UsageWeeklyTabState();
}

class _UsageWeeklyTabState extends State<UsageWeeklyTab> {
  final List<String> months = [
    'Sun 29, Nov - Sat 4, Dec',
    'Sun 5, Dec - Sat 11, Dec',
    'Sun 12, Dec - Sat 18, Dec',
  ];

  String dropdownvalue = 'Sun 29, Nov - Sat 4, Dec';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton(
          value: dropdownvalue,
          style: const TextStyle(color: Color.fromRGBO(38, 70, 83, 1)),
          elevation: 0,
          onChanged: (String? newValue) {
            setState(() {
              dropdownvalue = newValue!;
            });
          },
          items: months.map((type) {
            return DropdownMenuItem(
              child: Text(type),
              value: type,
            );
          }).toList(),
        ),
        UsageWeeklyLineChart(
          mainColor: widget.primaryColor,
        ),
      ],
    );
  }
}
