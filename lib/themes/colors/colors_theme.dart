import 'package:flutter/material.dart';

class ColorsTheme {
  static const Color primary = Color(0xff1f1d1b);
  static const Color primaryVariant = Color(0xff353432);

  static const Color secondary = Color(0xfff5a300);
  static const Color secondaryVariant = Color(0xfff8bf4d);

  static const Color onPrimary = Color(0xfffcfcfc);
  static const Color onSecondary = Color(0xfffcfcfc);

  static const Color background = Color(0xfffcfcfc);
  static const Color surface = Color(0xffe3e3e3);
  static const Color disabled = Color(0xffa5a4a3);

  static const Color error = Color(0xffe5342f);
  static const Color warning = Color(0xffeeba56);
  static const Color success = Color(0xff7fdf4b);

  MaterialColor getMaterialColor(Color color) {
    final int red = color.red;
    final int green = color.green;
    final int blue = color.blue;

    final Map<int, Color> shades = {
      50: Color.fromRGBO(red, green, blue, .1),
      100: Color.fromRGBO(red, green, blue, .2),
      200: Color.fromRGBO(red, green, blue, .3),
      300: Color.fromRGBO(red, green, blue, .4),
      400: Color.fromRGBO(red, green, blue, .5),
      500: Color.fromRGBO(red, green, blue, .6),
      600: Color.fromRGBO(red, green, blue, .7),
      700: Color.fromRGBO(red, green, blue, .8),
      800: Color.fromRGBO(red, green, blue, .9),
      900: Color.fromRGBO(red, green, blue, 1),
    };

    return MaterialColor(color.value, shades);
  }
}
