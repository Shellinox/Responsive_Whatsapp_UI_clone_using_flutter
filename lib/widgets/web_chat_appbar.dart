import 'package:flutter/material.dart';
import 'package:whatsappresposiveui/utils/colors.dart';
import 'package:whatsappresposiveui/utils/info.dart';

class WebChatAppbar extends StatelessWidget {
  const WebChatAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.75,
      padding: const EdgeInsets.all(10),
      color: webAppBarColor,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Row(children: [
            CircleAvatar(
            backgroundImage: NetworkImage(
                info[4]["profilePic"].toString()),
            radius: 30,
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(info[2]['name'].toString()),
              const Text('Online',style: TextStyle(fontSize: 10,color: Colors.grey),),
            ],
          ),
           ],),
           Row(children: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.grey,),),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,color: Colors.grey,),),
           ],)
        ],
      ),
    );
  }
}
