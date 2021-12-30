import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/status.dart';

class StatusDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Status(
                nam: "My status",
                statusTime: "Tap to add status",
                colo: Colors.amberAccent,
                displayStatus: true,
                displayBorder: false,
              ),
              SizedBox(
                height: 25,
                child: Container(
                  color: Colors.grey,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Recent updates",
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                  ),
                ),
              ),
              Status(
                  nam: "Anusree",
                  statusTime: "3 minutes ago",
                  colo: Colors.orange[900],
                  displayStatus: false,
                  displayBorder: true),
              Status(
                  nam: "Swati",
                  statusTime: "10 minutes ago",
                  colo: Colors.black,
                  displayStatus: false,
                  displayBorder: true),
              Status(
                  nam: "Aamy",
                  statusTime: "1 hour ago",
                  colo: Colors.orange,
                  displayStatus: false,
                  displayBorder: true),
              Status(
                  nam: "Neeha mwol",
                  statusTime: "2 hour ago",
                  colo: Colors.blue,
                  displayStatus: false,
                  displayBorder: true),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Contacts shown");
        },
        child: Icon(Icons.camera_alt_sharp),
        backgroundColor: Colors.greenAccent[700],
      ),
    );
  }
}
