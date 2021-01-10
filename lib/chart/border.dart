import 'package:Trach/gen/colors.gen.dart';
import 'package:flutter/material.dart';

@immutable
class BorderWidget extends StatelessWidget {

  final Widget child;

  BorderWidget({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
            color: ColorName.grayD2,
            width: 1
        ),
      ), //       <--- BoxDecoration here
      child: Padding(
          padding: EdgeInsets.all(8),
          child: child
      ),
    );
  }
}