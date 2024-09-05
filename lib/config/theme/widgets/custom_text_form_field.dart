import 'package:dermatology_app/config/theme/colors.dart';
import 'package:dermatology_app/config/theme/text_styles.dart';
import 'package:dermatology_app/core/util/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.disabled = false,
    this.isPassword = false,
    this.suffixIcon,
    this.suffixOnTap,
  });

  final TextEditingController controller;
  final String hintText;
  final bool disabled;
  final bool isPassword;
  final Widget? suffixIcon;
  final Function()? suffixOnTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widgetHeight,
      child: TextFormField(
        controller: controller,
        enabled: !disabled,
        obscureText: isPassword,
        decoration: InputDecoration(
          filled: true,
          fillColor: mSecondaryColor,
          hintText: hintText,
          hintStyle: mSecondaryMediumTextStyle.copyWith(color: mHintTextColor),
          hintMaxLines: 1,
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent, width: 0),
            borderRadius: BorderRadius.all(Radius.circular(13)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent, width: 0),
            borderRadius: BorderRadius.all(Radius.circular(13)),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          suffixIconColor: Colors.black,
          suffixIcon: suffixIcon != null
              ? IconButton(
                  onPressed: suffixOnTap,
                  icon: suffixIcon!,
                )
              : null,
        ),
      ),
    );
  }
}
