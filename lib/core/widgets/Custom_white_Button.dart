import 'package:flutter/material.dart';
import 'package:fruit_app/core/constants/app_text_styles.dart';

import '../constants/app_colors.dart';

class CustomWhiteButton extends StatelessWidget {
  final String text;
   final double? width;
   final double? height;
  final VoidCallback onPressed;

  const CustomWhiteButton({
    super.key,
    required this.text,
    required this.onPressed,
      this.width,
      this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.whiteColor,
        foregroundColor: AppColors.primaryColor,
        side: BorderSide(color: AppColors.primaryColor, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: Size(width ??0, height ??0),  
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      ),
      child: Text(
        text,
        style: AppTextStyles.size16primaryColorW500,
      ),
    );
  }
}
