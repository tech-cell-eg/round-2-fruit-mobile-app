import 'package:flutter/material.dart';
import 'package:fruit_app/core/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.hintStyle,
    this.prefixIcon,
    this.prefixIconColor,
  });
  final TextEditingController? controller;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? prefixIcon;
  final Color? prefixIconColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "This field is required";
        }
        return null;
      },
      cursorColor: AppColors.blackColor,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        prefixIconColor: prefixIconColor,
        hintText: hintText,
        hintStyle: hintStyle,
        filled: true,
        fillColor: AppColors.lightGray,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
      ),
    );
  }
}
