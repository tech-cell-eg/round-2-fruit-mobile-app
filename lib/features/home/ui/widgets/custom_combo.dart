import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/core/constants/app_colors.dart';
import 'package:fruit_app/core/constants/app_icons.dart';
import 'package:fruit_app/core/constants/app_images.dart';
import 'package:fruit_app/core/constants/app_strings.dart';
import 'package:fruit_app/core/constants/app_text_styles.dart';
import 'package:fruit_app/core/helper/extensions.dart';
import 'package:fruit_app/core/routing/routes.dart';

class CustomCombo extends StatelessWidget {
  const CustomCombo({super.key, this.containerColor});
  final Color? containerColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.productDetailsScreen);
      },
      child: Container(
        margin: EdgeInsets.only(right: 24),
        width: 152,
        decoration: BoxDecoration(
          color: containerColor ?? AppColors.whiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Image.asset(
              AppImages.imagesRecommendedCombo,
              width: 80,
              height: 80,
            ),
            SizedBox(height: 10),
            Text(
              AppStrings.cardHoldersNamed,
              style: AppTextStyles.size16mainTextColorW500,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AppIcons.iconsPound,
                    color: AppColors.primaryColor,
                  ),
                ),
                Text(
                  "2,000",
                  style: AppTextStyles.size14primaryColorW400,
                ),
                SizedBox(width: 30),
                SvgPicture.asset(AppIcons.iconsPlusCircle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
