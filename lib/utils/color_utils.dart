import 'package:flutter/material.dart';

final class ColorUtils {
  static Gradient get defaultLinearGradient {
    return const LinearGradient(
      colors: [
        Color.fromARGB(255, 78, 13, 151),
        Color.fromARGB(255, 107, 15, 168)
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }

  static Color get defaultPurpleColor {
    return const Color.fromARGB(255, 105, 21, 201);
  }
}
