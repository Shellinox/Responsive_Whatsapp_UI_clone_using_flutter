import 'package:flutter/material.dart';
import 'package:whatsappresposiveui/utils/info.dart';
import 'package:whatsappresposiveui/widgets/my_message_card.dart';
import 'package:whatsappresposiveui/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: ((context, index) {
        if (messages[index]["isMe"] == true) {
          // My message
          return MyMessageCard(
            message: messages[index]['text'].toString(),
            time: messages[index]['time'].toString(),
          );
        }
        // sender Messege
        return SenderMessageCard(
          message: messages[index]['text'].toString(),
          time: messages[index]['time'].toString(),
          tickcolor: Colors.blue,
        );
      }),
    );
  }
}
