import 'package:flutter/material.dart';
import 'package:wms_app/widgets/usage/analytics/usage_yearly_line_chart.dart';

class UsageYearlyTab extends StatefulWidget {
  final Color primaryColor;
  const UsageYearlyTab({Key? key, required this.primaryColor})
      : super(key: key);

  @override
  State<UsageYearlyTab> createState() => _UsageYearlyTabState();
}

class _UsageYearlyTabState extends State<UsageYearlyTab> {
  final List<String> months = [
    '2000',
    '2001',
    '2002',
    '2003',
    '2004',
    '2005',
    '2006',
    '2007',
    '2008',
    '2009',
    '2010',
    '2011',
    '2012',
    '2013',
    '2014',
    '2015',
    '2016',
    '2017',
    '2018',
    '2019',
    '2020',
    '2021',
  ];

  String dropdownvalue = '2021';
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
        UsageYearlyLineChart(mainColor: widget.primaryColor),
      ],
    );
  }
}
