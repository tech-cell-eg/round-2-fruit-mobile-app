import 'package:flutter/material.dart';
import 'package:fruit_app/core/constants/app_images.dart';
import 'package:fruit_app/core/helper/extensions.dart';
import 'package:fruit_app/core/routing/routes.dart';
import 'package:fruit_app/core/widgets/Custom_Button_Widget.dart';

import '../../core/widgets/Custom_white_Button.dart';

class CongratesScreen extends StatelessWidget {
  const CongratesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: context.screenHeight() * 0.1),
            Image.asset(
              AppImages.congratesimage,
            ),
            SizedBox(height: 56),
            CustomPrimaryButtonWidget(
              context: context,
              width: 133,
              height: 56,
              text: 'Track order',
              onTap: () {
                context.pushReplacmentNamed(Routes.trackOrderScreen);
              },
            ),
            SizedBox(
              height: context.screenHeight() * 0.03,
            ),
            CustomWhiteButton(
              text: 'Continue shopping',
              onPressed: () {
                context.pop();
              },
              width: 181,
              height: 56,
            ),
          ],
        ),
      ),
    );
  }
}
