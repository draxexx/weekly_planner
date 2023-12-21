import 'package:flutter/material.dart';

class CustomSpace {
  final double small = 4, medium = 8, large = 16, large2x = 32;

  // small
  SizedBox get horizontalSmall => SizedBox(width: small);
  SizedBox get verticalSmall => SizedBox(height: small);

  // medium
  SizedBox get horizontalMedium => SizedBox(width: medium);
  SizedBox get verticalMedium => SizedBox(height: medium);

  // large
  SizedBox get horizontalLarge => SizedBox(width: large);
  SizedBox get verticalLarge => SizedBox(height: large);

  // large 2x
  SizedBox get horizontalLarge2x => SizedBox(width: large2x);
  SizedBox get verticalLarge2x => SizedBox(height: large2x);
}
