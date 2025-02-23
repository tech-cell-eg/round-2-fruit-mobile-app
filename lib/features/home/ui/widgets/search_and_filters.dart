import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_app/core/constants/app_colors.dart';
import 'package:fruit_app/core/constants/app_icons.dart';
import 'package:fruit_app/core/constants/app_strings.dart';
import 'package:fruit_app/core/constants/app_text_styles.dart';
import 'package:fruit_app/core/helper/extensions.dart';
import 'package:fruit_app/core/widgets/custom_text_field.dart';

class SearchAndFilters extends StatelessWidget {
  const SearchAndFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: context.screenWidth() * 0.7,
          child: CustomTextField(
            hintText: AppStrings.searchForFruitSaladComobos,
            hintStyle: AppTextStyles.size14BlackW400,
            prefixIcon: Icon(Icons.search),
            prefixIconColor: AppColors.blackColor,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: SvgPicture.asset(
            AppIcons.iconsFilters,
          ),
        ),
      ],
    );
  }
}
