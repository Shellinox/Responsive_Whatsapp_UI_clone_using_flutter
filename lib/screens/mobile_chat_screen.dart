import 'package:flutter/material.dart';
import 'package:whatsappresposiveui/utils/colors.dart';
import 'package:whatsappresposiveui/utils/info.dart';
import 'package:whatsappresposiveui/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'].toString(),
          style: const TextStyle(fontSize: 17),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body:  Column(
        children: [
          const Expanded(child: ChatList()),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: mobileChatBoxColor,
              prefixIcon: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.emoji_emotions,
                  color: Colors.grey,
                ),
              ),
              suffixIcon:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: IconButton(onPressed: (){}, icon: const Icon(Icons.send),),
              ),
              hintText: "Type a message",
              hintStyle: const TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            ),

          )
        ],
      ),
    );
  }
}
