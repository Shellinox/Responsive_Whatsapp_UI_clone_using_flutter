import 'package:flutter/material.dart';
import 'package:whatsappresposiveui/screens/mobile_chat_screen.dart';
import 'package:whatsappresposiveui/utils/info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MobileChatScreen()));
              },
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(info[index]["profilePic"]!),
                ),
                title: Text(
                  info[index]['name']!,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  info[index]["message"]!,
                  style: const TextStyle(fontSize: 15),
                ),
                trailing: Text(
                  info[index]["time"]!,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
