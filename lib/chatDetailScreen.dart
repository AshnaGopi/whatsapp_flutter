import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/chats.dart';

class ChatDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Chats(
                  name: "Aamy",
                  msg: "Sticker",
                  time: "12:01",
                  num: "2",
                  col: Colors.orange),
              Chats(
                name: "Anu Tiktok",
                msg: "Njmmk chill aaka",
                time: "11:05",
                num: "1",
                col: Colors.red,
              ),
              Chats(
                name: "Neeha mwol",
                msg: "Ammena kaananam",
                time: "10:06",
                num: "2",
                col: Colors.blue,
              ),
              Chats(
                name: "Annu",
                msg: "Anthaada mwona",
                time: "09:09",
                num: "3",
                col: Colors.black,
              ),
              Chats(
                name: "Venna",
                msg: "Aisery",
                time: "08:50",
                num: "4",
                col: Colors.indigoAccent,
              ),
              Chats(
                name: "Sk",
                msg: "Ash baby",
                time: "08:30",
                num: "5",
                col: Colors.pink,
              ),
              Chats(
                name: "Arshutta",
                msg: "Njn paranjodkum",
                time: "08:00",
                num: "6",
                col: Colors.green,
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Contacts shown");
        },
        child: Icon(Icons.chat),
        backgroundColor: Colors.greenAccent[700],
      ),
    );
  }
}
