import 'package:flutter/material.dart';
import 'package:fruit_app/core/constants/app_colors.dart';
import 'package:fruit_app/core/constants/app_text_styles.dart';
import 'package:fruit_app/core/helper/extensions.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.text, required this.onTap});
  final String text;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: context.screenWidth(),
        height: 56,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextStyles.size16WhiteW500,
          ),
        ),
      ),
    );
  }
}
