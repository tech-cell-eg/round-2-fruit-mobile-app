import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

class CustomPrimaryButtonWidget extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  const CustomPrimaryButtonWidget({
    super.key,
    required this.width,
    required this.height,
    required this.text, required Null Function() onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: AppTextStyles.size16WhiteW500,
        ),
      ),
    );
  }
}
