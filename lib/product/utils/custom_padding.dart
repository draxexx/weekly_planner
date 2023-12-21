import 'package:flutter/material.dart';

class CustomPadding {
  final double small = 4;
  final double medium = 8;
  final double large = 16;

  EdgeInsets get allMedium => EdgeInsets.all(medium);
  EdgeInsets get allLarge => EdgeInsets.all(large);

  EdgeInsets get symmetricMedium =>
      EdgeInsets.symmetric(horizontal: medium, vertical: small);

  EdgeInsets get symmetricLarge =>
      EdgeInsets.symmetric(horizontal: large, vertical: medium);

  EdgeInsets get horizontalMedium => EdgeInsets.symmetric(horizontal: medium);

  EdgeInsets get horizontalLarge => EdgeInsets.symmetric(horizontal: large);

  EdgeInsets get rightSmall => EdgeInsets.only(right: small);
  EdgeInsets get rightMedium => EdgeInsets.only(right: medium);
  EdgeInsets get rightLarge => EdgeInsets.only(right: large);
}
