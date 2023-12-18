import 'package:flutter/material.dart';

class CustomSpace {
  final double small = 4, medium = 8, large = 16;

  // small
  SizedBox horizontalSmall() {
    return SizedBox(width: small);
  }

  SizedBox verticalSmall() {
    return SizedBox(height: small);
  }

  // medium
  SizedBox horizontalMedium() {
    return SizedBox(width: medium);
  }

  SizedBox verticalMedium() {
    return SizedBox(height: medium);
  }

  // large
  SizedBox horizontalLargel() {
    return SizedBox(width: large);
  }

  SizedBox verticalLarge() {
    return SizedBox(height: large);
  }
}
