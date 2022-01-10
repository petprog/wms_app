import 'package:flutter/material.dart';
import 'package:wms_app/widgets/message/message_text_send_button.dart';
import 'package:wms_app/widgets/message/messsage_item_container.dart';

class MessageScreenBody extends StatefulWidget {
  const MessageScreenBody({Key? key}) : super(key: key);

  @override
  _MessageScreenBodyState createState() => _MessageScreenBodyState();
}

class _MessageScreenBodyState extends State<MessageScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                ListView.builder(
                  itemBuilder: (ctx, i) => SizedBox(
                    width: 100,
                    child: MessageItemContainer(
                      messageText: "Hi",
                      dateTimeSent: DateTime.now(),
                    ),
                  ),
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
    );
  }
}
