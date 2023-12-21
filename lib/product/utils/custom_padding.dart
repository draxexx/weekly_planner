import 'package:flutter/material.dart';

class CustomPadding {
  final double small = 4;
  final double medium = 8;
  final double large = 16;

  // all
  EdgeInsets get allMedium => EdgeInsets.all(medium);
  EdgeInsets get allLarge => EdgeInsets.all(large);

  // symmetric
  EdgeInsets get symmetricMedium =>
      EdgeInsets.symmetric(horizontal: medium, vertical: small);
  EdgeInsets get symmetricLarge =>
      EdgeInsets.symmetric(horizontal: large, vertical: medium);

  // horizontal
  EdgeInsets get horizontalMedium => EdgeInsets.symmetric(horizontal: medium);
  EdgeInsets get horizontalLarge => EdgeInsets.symmetric(horizontal: large);

  // right
  EdgeInsets get rightSmall => EdgeInsets.only(right: small);
  EdgeInsets get rightMedium => EdgeInsets.only(right: medium);
  EdgeInsets get rightLarge => EdgeInsets.only(right: large);

  // bottom
  EdgeInsets get bottomSmall => EdgeInsets.only(bottom: small);
  EdgeInsets get bottomMedium => EdgeInsets.only(bottom: medium);
  EdgeInsets get bottomLarge => EdgeInsets.only(bottom: large);
}
