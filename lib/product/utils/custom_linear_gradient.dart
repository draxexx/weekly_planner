import 'package:flutter/material.dart';

class CustomLinearGradient {
  LinearGradient linearGradient({
    AlignmentGeometry begin = Alignment.topCenter,
    AlignmentGeometry end = Alignment.bottomCenter,
    List<Color> colors = const [
      Colors.white,
      Colors.blue,
    ],
  }) {
    return LinearGradient(
      begin: begin,
      end: end,
      colors: colors,
    );
  }
}
