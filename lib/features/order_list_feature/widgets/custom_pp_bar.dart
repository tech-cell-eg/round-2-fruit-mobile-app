import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      color: AppColors.primaryColor,
      child: Stack(
        children: [
          Positioned(
            left: 10,
            top: 50,
            bottom: 0,
            child: Center(
              child: TextButton.icon(
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(AppColors.whiteColor),
                ),
                onPressed: () {},
                label: const Text(
                  'Go back',
                  style: AppTextStyles.size16mainTextColorW400,
                ),
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.blackColor,
                ),
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'My Basket',
                style: AppTextStyles.size24WhiteW500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}




/*
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(110),
      child: AppBar(
        backgroundColor: AppColors.primaryColor,
        flexibleSpace: Stack(
          children: [
            Positioned(
              top: 77,
              left: 10,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: AppColors.whiteColor,
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    const Icon(Icons.arrow_back_ios),
                    const Text('Go back'),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 88,
              left: 150,
              child: Text(
                'My Basket',
                style: AppTextStyles.size20mainTextColorW400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/