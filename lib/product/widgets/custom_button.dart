import 'package:flutter/material.dart';
import 'package:weekly_planner/product/utils/size_config.dart';
import 'package:weekly_planner/product/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.btnHeight = 48,
  });

  final void Function()? onPressed;
  final String text;
  final double btnHeight;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: CustomText(
        text: text,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.background,
              fontWeight: FontWeight.w700,
            ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith((states) {
          return Theme.of(context).colorScheme.primary;
        }),
        minimumSize: MaterialStateProperty.resolveWith((states) {
          return Size.fromHeight(getProportionateScreenWidth(btnHeight));
        }),
      ),
    );
  }
}
