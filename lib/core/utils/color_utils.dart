import 'package:flutter/material.dart';

class ColorUtils {
  ColorUtils._();

  ///Returns fully opaque Color for any given integer representation of color.
  static Color colorFromInt(int i) {
    const a = 255;
    final r = (i >> 16) & 0xFF;
    final g = (i >> 8) & 0xFF;
    final b = i & 0xFF;
    return Color.fromARGB(a, r, g, b);
  }

  ///Returns dark or light foreground text color for a given background color.
  static Color textColorFor({int backgroundColor}) {
    //const a = 255;
    final r = (backgroundColor >> 16) & 0xFF;
    final g = (backgroundColor >> 8) & 0xFF;
    final b = backgroundColor & 0xFF;

    int counter = 0;
    if (r < 110) {
      counter += 1;
    }
    if (r < 120) {
      counter += 1;
    }
    if (g < 120) {
      counter += 1;
    }
    if (b < 120) {
      counter += 1;
    }
    if (counter >= 2) {
      return Colors.white;
    }
    return Colors.black;
  }
}
