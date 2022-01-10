import 'package:flutter/material.dart';
import 'package:wms_app/widgets/message/message_text_send_button.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "Message",
            style: TextStyle(
              color: Color.fromRGBO(112, 112, 112, 1),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Stack(
                  children: [
                    ListView.builder(
                      itemBuilder: (ctx, i) => const Text("Hi"),
                      itemCount: 10,
                    ),
                    Positioned(
                      bottom: 0,
                      child: MessageTextSendButton(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
