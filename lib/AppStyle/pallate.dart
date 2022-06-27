import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor kToDark = MaterialColor(
    0xff1cc68c, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff33cc98), //10%
      100: Color(0xff49d1a3), //20%
      200: Color(0xff60d7af), //30%
      300: Color(0xff77ddba), //40%
      400: Color(0xff8ee3c6), //50%
      500: Color(0xffa4e8d1), //60%
      600: Color(0xffbbeedd), //70%
      700: Color(0xffd2f4e8), //80%
      800: Color(0xffe8f9f4), //90%
      900: Color(0xffffffff), //100%
    },
  );
}
