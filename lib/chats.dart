import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  final String name;
  final String msg;
  final String time;
  final String num;
  final Color col;

  Chats({
    @required this.name,
    @required this.msg,
    @required this.time,
    @required this.num,
    @required this.col,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: col,
        ),
      ),
      title: Text(
        name,
        style: TextStyle(color: Colors.black),
      ),
      subtitle: Text(
        msg,
        style: TextStyle(color: Colors.black),
      ),
      trailing: Column(
        children: [
          Text(
            time,
            style: TextStyle(color: Colors.green),
          ),
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
            child: Center(
              child: Text(
                num,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
