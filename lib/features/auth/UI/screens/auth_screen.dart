import 'package:flutter/material.dart';
import 'package:fruit_app/core/constants/app_images.dart';
import 'package:fruit_app/features/auth/UI/widgets/auth_field.dart';
import 'package:fruit_app/features/welcom/UI/widgets/fruit_basket_widget.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FruitBasketWidget(fruitBasketImage: AppImages.imagesFruitBasket2),
            AuthField(),
          ],
        ),
      ),
    );
  }
}
