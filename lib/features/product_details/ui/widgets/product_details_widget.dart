import 'package:flutter/material.dart';
import 'package:fruit_app/core/constants/app_colors.dart';
import 'package:fruit_app/core/constants/app_text_styles.dart';
import 'package:fruit_app/core/helper/extensions.dart';
import 'package:fruit_app/features/product_details/ui/widgets/product_descripition.dart';
import 'package:fruit_app/features/product_details/ui/widgets/quanity_and_price_product_detail.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight() * 0.65,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Text(
              "Quinoa Fruit Salad",
              style: AppTextStyles.size32mainTextColorW500,
            ),
            SizedBox(height: 30),
            QuantityAndPriceProductDetail(),
            SizedBox(height: 30),
            ProductDescripition(),
          ],
        ),
      ),
    );
  }
}
