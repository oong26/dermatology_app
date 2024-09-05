import 'package:dermatology_app/config/theme/colors.dart';
import 'package:dermatology_app/config/theme/text_styles.dart';
import 'package:dermatology_app/core/util/constants.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.onPressed, required this.text});

  final Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 273,
      height: widgetHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: MaterialStateProperty.resolveWith((states) => 0),
          shape: MaterialStateProperty.resolveWith<OutlinedBorder?>((states) =>
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
          backgroundColor: const MaterialStatePropertyAll<Color>(mPrimaryColor),
        ),
        child: Text(
          text,
          style: mInfoLargeTextStyle,
        ),
      ),
    );
  }
}
