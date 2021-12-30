import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/callDetailScreen.dart';
import 'package:whatsapp_flutter/chatDetailScreen.dart';
import 'package:whatsapp_flutter/statusDetailScreen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal[800],
            title: Text(
              "WhatsApp",
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    print("Search contacts");
                  }),
              IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    print("dropdown pressed");
                  }),
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.camera_alt_sharp,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  child: Text(
                    "CHATS",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    "STATUS",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    "CALLS",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.camera_alt),
              ChatDetailScreen(),
              StatusDetailScreen(),
              CallDetailScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
