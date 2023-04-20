import 'package:flutter/material.dart';

import '../data/chat_data.dart';
import '../models/chat.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    super.key,
    this.chat,
  });
  Chat? chat;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  var fabIcon = Icons.photo_camera_rounded;
  late TabController tabC = TabController(length: 4, vsync: this)
    ..addListener(() {
      setState(() {
        switch (tabC.index) {
          case 0:
            fabIcon = Icons.photo_camera_rounded;
            break;
          case 1:
            fabIcon = Icons.message;
            break;
          case 2:
            fabIcon = Icons.camera_enhance;
            break;
          case 3:
            fabIcon = Icons.call;
            break;
        }
      });
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Whatsapp",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Icon(Icons.search_outlined),
          Padding(padding: EdgeInsets.only(right: 10)),
          Icon(Icons.more_vert_outlined),
        ],
        bottom: TabBar(
          controller: tabC,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt_outlined),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(
              text: "Calls",
            ),
          ],
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(
        children: [
          Icon(Icons.camera_alt_outlined),
          Text("Chats Screen"),
          Text("Status Screen"),
          Text("Calls Screen"),
        ],
        controller: tabC,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(fabIcon),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
