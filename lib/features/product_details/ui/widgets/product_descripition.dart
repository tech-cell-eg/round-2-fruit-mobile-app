import 'package:flutter/material.dart';
import 'package:fruit_app/core/constants/app_colors.dart';
import 'package:fruit_app/core/constants/app_strings.dart';
import 'package:fruit_app/core/constants/app_text_styles.dart';
import 'package:fruit_app/core/widgets/custom_text_button.dart';

class ProductDescripition extends StatelessWidget {
  const ProductDescripition({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.onePackContains,
          style: AppTextStyles.size20mainTextColorW500,
        ),
        Divider(
          endIndent: 200,
          thickness: 2,
          color: AppColors.primaryColor,
        ),
        SizedBox(height: 5),
        Text(
          "Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.",
          style: AppTextStyles.size16mainTextColorW500,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 50),
          child: Text(
            "If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you.",
            style: AppTextStyles.size14BlackW400,
          ),
        ),
        Center(
          child: CustomTextButton(text: AppStrings.addToBasket, onTap: () {}),
        ),
      ],
    );
  }
}
