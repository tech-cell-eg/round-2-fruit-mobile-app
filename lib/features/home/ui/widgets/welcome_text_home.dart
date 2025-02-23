import 'package:flutter/material.dart';
import 'package:fruit_app/core/constants/app_strings.dart';
import 'package:fruit_app/core/constants/app_text_styles.dart';

class WelcomTextHome extends StatelessWidget {
  const WelcomTextHome({
    super.key,
    required this.name,
  });

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Hello $name,",
              style: AppTextStyles.size20mainTextColorW400,
            ),
            TextSpan(
              text: AppStrings.whatFruitSaladComoboDoYouWantToday,
              style: AppTextStyles.size20mainTextColorW500,
            ),
          ],
        ),
      ),
    );
  }
}
