import 'package:flutter/material.dart';
import 'package:whatsappresposiveui/utils/colors.dart';
import 'package:whatsappresposiveui/widgets/contacts_list.dart';

class MoblieScreenLayout extends StatelessWidget {
  const MoblieScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appBarColor,
          centerTitle: false,
          title: const Text(
            "Whatsapp",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
          bottom: const TabBar(
              indicatorColor: tabColor,
              indicatorWeight: 4,
              labelPadding: EdgeInsets.all(10),
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              labelColor: tabColor,
              tabs: [
                Text("Chats"),
                Text("Updates"),
                Text("Calls"),
              ]),
        ),
        body: ContactsList(),
        floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: tabColor,child: const Icon(Icons.comment,color: Colors.white,),),
      ),
    );
  }
}
