import 'package:flutter/material.dart';

class CustomRadius {
  final double _small = 4;
  final double _medium = 8;
  final double _large = 16;

  BorderRadius get allSmall => BorderRadius.circular(_small);
  BorderRadius get allMedium => BorderRadius.circular(_medium);
  BorderRadius get allLarge => BorderRadius.circular(_large);
}
