import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wms_app/screen/backup_sceens/top_up_add/top_up_add_third_screen.dart';
import 'package:wms_app/widgets/top_up/top_up_details_card.dart';

class TopUpAddSecondScreen extends StatelessWidget {
  static const routeName = "/top_up_add_second_screen";
  const TopUpAddSecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopUpDetailsCard(
                name: "Okonkwo Kingsley",
                phoneNumber: "08107218147",
                estate: "Graceland Esatate",
                meterNumber: "63473288374",
                meterType: 'Prepaid',
                textColor: Color.fromRGBO(38, 70, 83, 1),
                cardBackgroundColor: Color.fromRGBO(38, 70, 83, 1),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Subtotal",
                        style: TextStyle(
                          color: Color.fromRGBO(5, 5, 9, 1),
                          fontSize: 14,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "N5000",
                        style: TextStyle(
                            color: Color.fromRGBO(5, 5, 9, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "VAT",
                        style: TextStyle(
                          color: Color.fromRGBO(5, 5, 9, 1),
                          fontSize: 14,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "N100",
                        style: TextStyle(
                            color: Color.fromRGBO(5, 5, 9, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                          color: Color.fromRGBO(5, 5, 9, 1),
                          fontSize: 14,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "N5100",
                        style: TextStyle(
                            color: Color.fromRGBO(5, 5, 9, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider()
                ],
              ),
              SizedBox(
                width: 200,
                child: Text(
                  'Choose your preferred payment channel',
                  softWrap: true,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(38, 70, 83, 1)),
                ),
              ),
              // Flutterwave and PayStack TODO:
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        // Flutterwave payment UI
                      },
                      child: SizedBox(
                        width: 150,
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/top_up_add/img_flutterwave_logo.png",
                              width: 21,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Flutter",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            const Text(
                              "wave",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      onTap: () {
                        // Paystack payment UI
                      },
                      child: SizedBox(
                        width: 150,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/top_up_add/img_paystack_logo.svg",
                              width: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Paystack",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(38, 70, 83, 1)),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(TopUpAddThirdScreen.routeName);
                    },
                    child: Text(
                      "Buy Now",
                      style: TextStyle(color: Color.fromRGBO(220, 220, 220, 1)),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
