import 'package:flutter/material.dart';

class TopUpAddWaterThirdScreen extends StatelessWidget {
  static const routeName = "/top_up_add_water_third_screen";
  const TopUpAddWaterThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Complete Order'),
            SizedBox(
              height: 70,
            ),
            CircleAvatar(
              radius: 65,
              backgroundColor: Color.fromRGBO(42, 157, 143, 1),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.check,
                  size: 60,
                  color: Color.fromRGBO(42, 157, 143, 1),
                ),
                radius: 60,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Transaction Completed",
              style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(5, 5, 9, 1),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Transaction ID: EWUWYLS234',
              style: TextStyle(
                color: Color.fromRGBO(153, 170, 168, 1),
                fontSize: 10,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "See Receipt",
                style: TextStyle(color: Color.fromRGBO(38, 70, 83, 1)),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(205, 254, 248, 1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
