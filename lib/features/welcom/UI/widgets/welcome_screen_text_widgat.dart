import 'package:flutter/material.dart';
import 'package:fruit_app/core/constants/app_strings.dart';
import 'package:fruit_app/core/constants/app_text_styles.dart';
import 'package:fruit_app/core/helper/extensions.dart';
import 'package:fruit_app/core/routing/routes.dart';
import 'package:fruit_app/core/widgets/custom_text_button.dart';

class WelcomeScreenTextWidgat extends StatelessWidget {
  const WelcomeScreenTextWidgat({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Text(
            AppStrings.getFreshestFruitSaladCombo,
            style: AppTextStyles.size20mainTextColorW500,
          ),
          SizedBox(height: 8),
          Text(
            AppStrings.weDeleiverAndFreshest,
            style: AppTextStyles.size16secTextColorW400,
          ),
          Padding(
            padding: EdgeInsets.only(top: context.screenHeight() * .05),
            child: CustomTextButton(
                text: AppStrings.letContinue,
                onTap: () {
                  context.pushReplacmentNamed(Routes.authScreen);
                }),
          ),
        ],
      ),
    );
  }
}
