import 'package:flutter/material.dart';
import 'package:weekly_planner/product/widgets/custom_icon.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.color,
  });

  final IconData icon;
  final void Function()? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomIcon(
        icon: icon,
        color: color,
      ),
    );
  }
}
