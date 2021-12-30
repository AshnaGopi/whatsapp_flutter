import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  final String nam;
  final String statusTime;
  final Color colo;
  Calls({
    @required this.nam,
    @required this.statusTime,
    @required this.colo,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colo,
            ),
          ),
        ],
      ),
      title: Text(nam),
      subtitle: Row(
        children: [
          Icon(
            Icons.call_received_outlined,
            color: Colors.green,
            size: 15,
          ),
          SizedBox(
            width: 10,
          ),
          Text(statusTime),
        ],
      ),
      trailing: IconButton(
        icon: Icon(
          Icons.video_call_sharp,
          color: Colors.teal,
        ),
        onPressed: () {
          print("Video call");
        },
      ),
    );
  }
}
