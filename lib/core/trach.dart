import 'package:Trach/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Trach {

  static AppBar appBar() {
    return AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: Padding(
          padding: EdgeInsets.only(left: 16),
          child: Image(image: Assets.images.logo, width: 100, height: 30)
      ),
      shadowColor: Colors.transparent,
    );
  }

  static PreferredSize custom() {
    return PreferredSize(
      preferredSize: Size.fromHeight(80.0),
      child: AppBar(
        centerTitle: false,
        titleSpacing: 0.0,
        title: Padding(
          padding: EdgeInsets.only(left: 16, top: 10, right: 16),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(image: Assets.images.logo, width: 100, height: 30),
                Image(image: Assets.images.list)
              ]),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
      ),
    );
  }
}