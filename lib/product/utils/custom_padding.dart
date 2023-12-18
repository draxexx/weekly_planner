import 'package:flutter/material.dart';

class CustomPadding {
  final double cardPaddingAll = 8;
  final double horizontal = 8;
  final double vertical = 4;

  EdgeInsets all() {
    return EdgeInsets.all(cardPaddingAll);
  }

  EdgeInsets symmetric() {
    return EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
  }
}
