import 'package:flutter/material.dart';

class TopUpAddGasThirdScreen extends StatelessWidget {
  static const routeName = "/top_up_add_gas_third_screen";
  const TopUpAddGasThirdScreen({Key? key}) : super(key: key);

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
              backgroundColor: Color.fromRGBO(231, 111, 81, 1),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.check,
                  size: 60,
                  color: Color.fromRGBO(231, 111, 81, 1),
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
                  color: Color.fromRGBO(231, 111, 81, 1),
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
                style: TextStyle(color: Color.fromRGBO(185, 74, 46, 1)),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(255, 239, 235, 1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
