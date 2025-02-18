import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_app/core/constants/app_colors.dart';
import 'package:fruit_app/core/constants/app_icons.dart';
import 'package:fruit_app/core/constants/app_strings.dart';
import 'package:fruit_app/core/constants/app_text_styles.dart';

class  GoBackWidget extends StatelessWidget {
  const GoBackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height:32,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(100)
      ),
      child: Row(
        children: [
          SvgPicture.asset(AppIcons.iconsBack),
          Text(AppStrings.goBack,style: AppTextStyles.size16mainTextColorW400),
        ],
      ),
    );
  }
}