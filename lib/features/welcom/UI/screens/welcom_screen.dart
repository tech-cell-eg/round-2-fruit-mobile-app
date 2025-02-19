import 'package:flutter/material.dart';
import 'package:fruit_app/features/welcom/UI/widgets/fruit_basket_widget.dart';
import 'package:fruit_app/features/welcom/UI/widgets/welcome_screen_text_widgat.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FruitBasketWidget(),
          WelcomeScreenTextWidgat(),
        ],
      ),
    );
  }
}
