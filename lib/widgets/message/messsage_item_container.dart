import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MessageItemContainer extends StatelessWidget {
  final String messageText;
  final DateTime dateTimeSent;
  const MessageItemContainer(
      {Key? key, required this.messageText, required this.dateTimeSent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      child: Container(
        margin: EdgeInsets.only(left: size.width / 3, top: 5, bottom: 5),
        decoration: BoxDecoration(color: Color.fromRGBO(235, 242, 245, 1)),
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(messageText),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  DateFormat("h:mma").format(dateTimeSent),
                  style: TextStyle(fontSize: 10),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
