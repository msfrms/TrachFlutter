import 'package:flutter/material.dart';

class TrackPlaceholderWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var color = Colors.grey[300];
    return Row(children: [
      Center(child: Container(color: color, width: 20, height: 20)),
      Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Container(color: color, width: 60, height: 60)
      ),
      Column(
        children: [
          Padding(padding: EdgeInsets.only(bottom: 10), child: Container(color: color, height: 15, width: 200)),
          Container(color: color, height: 15, width: 150,)
        ],
        crossAxisAlignment: CrossAxisAlignment.start)
    ]);
  }
}