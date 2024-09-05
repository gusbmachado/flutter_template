import 'package:flutter/material.dart';

class ColorPalette {
  static const PRIMARY_1 = Color(0xFF9ab1c8);
  static const PRIMARY_2 = Color(0xFF09416c);
  static const PRIMARY_3 = Color(0xFFe6e7e7);
  static const PRIMARY_4 = Color(0xFF9bb2ca);
  static const NEUTRAL_1 = Color(0xFF18191d);
  static const NEUTRAL_2 = Color(0xFFfcfcfc);
  static const NEUTRAL_3 = Color(0xFF808080);
  static const NEUTRAL_4 = Color(0xFFd6d4d4);
  static const NEUTRAL_5 = Color(0xFF1d2024);
  static const NEUTRAL_6 = Color(0xFF2a2b31);
  static const SYSTEM_1 = Color(0xFFc11e0f);
  static const SYSTEM_2 = Color(0xFFf2921b);
  static const SYSTEM_3 = Color(0xFF4a90e2);
  static const SYSTEM_4 = Color(0xFF494aa7);
  static const SYSTEM_5 = Color(0xFF75b831);
  
  static Color applyAlpha(Color color, double alpha) {
    return color.withOpacity(alpha);
  }
}

