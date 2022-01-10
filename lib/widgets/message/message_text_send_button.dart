import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessageTextSendButton extends StatelessWidget {
  const MessageTextSendButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Row(
        children: [
          SizedBox(
            width: size.width * 0.8,
            child: const TextField(
              maxLines: null,
              cursorColor: Color.fromRGBO(42, 157, 143, 1),
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: "What's on your mind",
                hintStyle: TextStyle(
                  color: Color.fromRGBO(145, 152, 155, 0.5),
                ),
                fillColor: Color.fromRGBO(245, 252, 255, 1),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(145, 152, 155, 1),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  borderSide:
                      BorderSide(color: Color.fromRGBO(142, 157, 143, 1)),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          SvgPicture.asset(
            "assets/icons/message/ic_message_send.svg",
            color: const Color.fromRGBO(145, 152, 155, 1),
            width: 40,
          ),
        ],
      ),
    );
  }
}
