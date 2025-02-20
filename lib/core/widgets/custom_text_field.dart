import 'package:flutter/material.dart';
import 'package:fruit_app/core/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "This field is required";
        }
        return null;
      },
      cursorColor: AppColors.blackColor,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.lightGray,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
      ),
    );
  }
}
