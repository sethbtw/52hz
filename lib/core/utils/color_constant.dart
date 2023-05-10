import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color orangeA100 = fromHex('#f1d473');

  static Color orange50 = fromHex('#fff6db');

  static Color black900B2 = fromHex('#b2000000');

  static Color indigo200 = fromHex('#9f9ed0');

  static Color lightBlue300 = fromHex('#60d7fd');

  static Color black900 = fromHex('#000000');

  static Color blueGray400 = fromHex('#888888');

  static Color blueGray800 = fromHex('#424255');

  static Color blueGray700 = fromHex('#535353');

  static Color whiteA700 = fromHex('#ffffff');

  static Color orange300 = fromHex('#fcad5e');

  static Color deepOrange100 = fromHex('#f9c3b7');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
