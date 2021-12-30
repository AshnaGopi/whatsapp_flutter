import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  final String nam;
  final String statusTime;
  final bool displayBorder;
  final bool displayStatus;
  final Color colo;
  Status(
      {@required this.nam,
      @required this.statusTime,
      @required this.colo,
      this.displayBorder,
      this.displayStatus});
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
                border: displayBorder
                    ? Border.all(
                        color: Colors.cyanAccent,
                        width: 2,
                      )
                    : Border()),
          ),
          displayStatus
              ? Positioned(
                  bottom: 2,
                  right: 3,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                        border: Border.all(color: Colors.white, width: 2)),
                    child: Center(
                      child: Text(
                        "+",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              : SizedBox()
        ],
      ),
      title: Text(nam),
      subtitle: Text(statusTime),
    );
  }
}
