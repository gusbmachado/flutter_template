import 'package:flutter/material.dart';

class ColorPalette {
  static const PRIMARY_1 = Color(0xFF9ab1c8);
  static const PRIMARY_2 = Color(0xFF09416c);
  static const PRIMARY_3 = Color(0xFFe6e7e7);
  static const PRIMARY_4 = Color(0xFF9bb2ca);
  static const PRIMARY_5 = Color(0xFF9b9cc9);
  static const PRIMARY_6 = Color(0xFFb99bc9);
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
  static const SYSTEM_6 = Color(0xFF8d01da);
  static const transparent = Color(0x00000000);
  
  static Color applyAlpha(Color color, double alpha) {
    return color.withOpacity(alpha);
  }
}

TextStyle pageBasicStyle = const TextStyle(
  fontSize: 32,
  fontFamily: 'Nunito Sans',
  color: ColorPalette.NEUTRAL_2,
);

TextStyle pageTitleStyle = pageBasicStyle.copyWith(
  fontWeight: FontWeight.bold,
);

TextStyle pageButtonStyle = pageBasicStyle.copyWith(
  fontWeight: FontWeight.normal,
);

class ChartDistinctColors {
  static const List<Color> palette = [
      // Bright & Clear (Primary/Secondary)
      Color(0xFF00E676), // Green A700 (Vibrant Emerald)
      Color(0xFF29B6F6), // Light Blue 400 (Sky Blue)
      Color(0xFFFFEE58), // Yellow 400 (Bright Gold, suitable for dark)
      Color(0xFFEF5350), // Red 400 (Clear Red)

      // Deeper & Richer Tones
      Color(0xFF673AB7), // Deep Purple 500
      Color(0xFFFF9800), // Orange 500 (Standard Orange)
      Color(0xFF00BFA5), // Teal A700 (Rich Teal)
      Color(0xFFD81B60), // Pink 600 (Deep Rose)

      // Unique & Earthy/Muted Accents
      Color(0xFF8D6E63), // Brown 400 (Warm Coffee)
      Color(0xFF9CCC65), // Light Green 500 (Lime Green, distinct from emerald)
      Color(0xFF7E57C2), // Deep Purple 400 (Amethyst)
      Color(0xFF4DD0E1), // Cyan 300 (Aqua)

      // Additional Distinct Hues
      Color(0xFF90A4AE), // Blue Grey 400 (Muted cool grey)
      Color(0xFF7CB342), // Light Green 600 (Olive-ish Green)
      Color(0xFFFBC02D), // Amber 700 (Deep Gold)
      Color(0xFFD500F9), // Purple A700 (Electric Purple)

  // Pinks/Magenta/Reds (expanding from Pink 600, Red 400)
      Color(0xFFF06292), // Pink 300 (Softer pink)
      Color(0xFFE53935), // Red 600 (Deeper Red)
      Color(0xFFAD1457), // Pink 800 (Darker Rose)

      // Blues/Cyan (expanding from Light Blue 400, Cyan 300)
      Color(0xFF2196F3), // Blue 500 (Standard Blue)
      Color(0xFF03A9F4), // Light Blue 500 (Brighter Blue)
      Color(0xFF00BCD4), // Cyan 500 (Standard Cyan)
      Color(0xFF80DEEA), // Cyan 200 (Very light aqua, use carefully for lines but distinct)

      // Greens/Lime (expanding from Green A700, Light Green 500, Light Green 600)
      Color(0xFF4CAF50), // Green 500 (Standard Green, slightly different from A700)
      Color(0xFFAEEB42), // Lime A700 (Vibrant Lime)
      Color(0xFFCDDC39), // Lime 500 (Muted Lime)

      // Oranges/Amber/Browns (expanding from Orange 500, Amber 700, Brown 400)
      Color(0xFFFFB300), // Amber 600 (Rich Amber)
      Color(0xFFFFD54F), // Amber 300 (Lighter Gold)
      Color(0xFFBCAAA4), // Brown 200 (Light Clay)
      Color(0xFFF4511E), // Deep Orange 600 (Burnt Orange)

      // Purples (expanding from Deep Purple 500, Purple A700)
      Color(0xFF7B1FA2), // Purple 700 (Darker Purple)
      Color(0xFFCE93D8), // Purple 200 (Very light Lavender)

      // Greys/Cool Tones (expanding from Blue Grey 400)
      Color(0xFF78909C), // Blue Grey 500 (Slightly darker cool grey)
      Color(0xFFB0BEC5), // Blue Grey 300 (Lighter cool grey)
      Color(0xFF607D8B), // Blue Grey 600 (Deeper cool grey)

      // Additional Distinct Hues
      Color(0xFF4DB6AC), // Teal 300 (Muted Teal, distinct from A700)
      Color(0xFF82B1FF), // Blue A100 (Very light blue, might work for subtle lines)
      Color(0xFFC6FF00), // Lime A700 (Very bright green, almost neon - use for high contrast)
    ];
}
