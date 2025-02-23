import 'package:flutter/material.dart';
import 'package:fruit_app/core/constants/app_colors.dart';
import 'package:fruit_app/core/constants/app_images.dart';
import 'package:fruit_app/core/helper/extensions.dart';
import 'package:fruit_app/core/widgets/go_back_widget.dart';
import 'package:fruit_app/features/product_details/ui/widgets/product_details_widget.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          Positioned(
            top: context.screenHeight() * 0.05,
            left: 20,
            child: GoBackWidget(),
          ),
          Positioned(
            top: context.screenHeight() * 0.1,
            left: context.screenWidth() * 0.3,
            child: Image.asset(
              AppImages.imagesRecommendedCombo,
              width: 150,
              height: 150,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.36,
            left: 0,
            right: 0,
            child: ProductDetailsWidget(),
          )
        ],
      ),
    );
  }
}
