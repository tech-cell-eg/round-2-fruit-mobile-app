import 'package:flutter/material.dart';
import 'package:fruit_app/core/constants/app_colors.dart';
import 'package:fruit_app/core/constants/app_images.dart';
import 'package:fruit_app/core/helper/extensions.dart';

class FruitBasketWidget extends StatelessWidget {
  const FruitBasketWidget({super.key, required this.fruitBasketImage});
  final String fruitBasketImage;
  @override
  Widget build(BuildContext context) {
    double contianerHeight = context.screenHeight() * 0.60;
    return Container(
      height: contianerHeight,
      width: context.screenWidth(),
      color: AppColors.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(left: context.screenWidth() * 0.7),
            child: Image.asset(
              AppImages.imagesFruitDrop1,
              width: 50,
              height: 37,
            ),
          ),
          Image.asset(fruitBasketImage),
          SizedBox(height: 8),
          Image.asset(
            AppImages.imagesShadow1,
            width: 301,
            height: 12,
          ),
          SizedBox(height: 34),
        ],
      ),
    );
  }
}
