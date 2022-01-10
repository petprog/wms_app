import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wms_app/widgets/usage/analytics/usage_monthly_bar_chart.dart';

class UsageMonthlyTab extends StatefulWidget {
  final Color primaryColor;
  const UsageMonthlyTab({Key? key, required this.primaryColor})
      : super(key: key);

  @override
  State<UsageMonthlyTab> createState() => _UsageMonthlyTabState();
}

class _UsageMonthlyTabState extends State<UsageMonthlyTab> {
  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  String dropdownvalue = 'January';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton(
          value: dropdownvalue,
          style: TextStyle(color: Color.fromRGBO(38, 70, 83, 1)),
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
        UsageMonthlyBarChart(
          mainColor: widget.primaryColor,
        ),
      ],
    );
  }
}
