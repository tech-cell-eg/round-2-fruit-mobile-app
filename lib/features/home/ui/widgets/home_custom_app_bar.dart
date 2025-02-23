import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_app/core/constants/app_icons.dart';
import 'package:fruit_app/core/constants/app_images.dart';
import 'package:fruit_app/core/constants/app_strings.dart';
import 'package:fruit_app/core/constants/app_text_styles.dart';

class HomeCustomAppBar extends StatelessWidget {
  const HomeCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(AppIcons.iconsGroup),
        GestureDetector(
          onTap: (){},
          child: Column(
            children: [
              Image.asset(
                AppImages.imagesFoodBasketHome,
                width: 24,
                height: 24,
              ),
              Text(
                AppStrings.myBasket,
                style: AppTextStyles.size10mainTextColorW400,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
