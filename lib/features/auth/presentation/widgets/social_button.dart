import 'package:dermatology_app/config/theme/colors.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.onPressed, required this.icon});

  final Function() onPressed;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(mSecondaryColor),
      ),
      icon: icon,
    );
  }
}
