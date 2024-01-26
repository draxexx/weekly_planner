import 'package:draxex_flutter_template/draxex.dart';
import 'package:flutter/material.dart';

class TaskTag extends StatelessWidget {
  const TaskTag({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
  });

  final String text;
  final Color bgColor, textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: DraxexPadding().rightMedium,
      padding: DraxexPadding().symmetricMedium,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: DraxexText(
        text: text.toUpperCase(),
        style:
            Theme.of(context).textTheme.bodySmall!.copyWith(color: textColor),
      ),
    );
  }
}
