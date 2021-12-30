import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/calls.dart';

class CallDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Calls(
                nam: "Swati",
                statusTime: "Today 20:08",
                colo: Colors.orange[900],
              ),
              Calls(
                nam: "Anusree",
                statusTime: "Yesterday 21:54",
                colo: Colors.black,
              ),
              Calls(
                nam: "Aamy",
                statusTime: "Yesterday 19:09",
                colo: Colors.orange,
              ),
              Calls(
                nam: "Neeha mwol",
                statusTime: "Yesterday 13:36",
                colo: Colors.blue,
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Call shown");
        },
        child: Icon(Icons.phone_bluetooth_speaker_sharp),
        backgroundColor: Colors.greenAccent[700],
      ),
    );
  }
}
