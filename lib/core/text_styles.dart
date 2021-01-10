import 'package:Trach/gen/colors.gen.dart';
import 'package:Trach/gen/fonts.gen.dart';
import 'package:flutter/cupertino.dart';

class TextStyles {

  static TextStyle medium({double fontSize, Color color = ColorName.black}) => TextStyle(
      color: color,
      fontFamily: FontFamily.roboto,
      fontWeight: FontWeight.w500,
      fontSize: fontSize
  );


  static TextStyle regular({double fontSize, Color color = ColorName.black}) {
    return TextStyle(
        color: color,
        fontFamily: FontFamily.roboto,
        fontWeight: FontWeight.w400,
        fontSize: fontSize
    );
  }

  static TextStyle light({double fontSize, Color color = ColorName.black}) {
    return TextStyle(
        color: color,
        fontFamily: FontFamily.roboto,
        fontWeight: FontWeight.w300,
        fontSize: fontSize
    );
  }
}