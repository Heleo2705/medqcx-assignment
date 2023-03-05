import 'package:flutter/material.dart';

class TextStyleConstants {
  static TextStyle text16({Color? color}) => TextStyle(
        fontSize: 16,
        overflow: TextOverflow.ellipsis,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w500,
      );
  static TextStyle text12({Color? color}) => TextStyle(
        fontSize: 12,
        overflow: TextOverflow.ellipsis,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w500,
      );
  static TextStyle text10({Color? color}) => TextStyle(
        fontSize: 10,
        overflow: TextOverflow.ellipsis,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w500,
      );
}
