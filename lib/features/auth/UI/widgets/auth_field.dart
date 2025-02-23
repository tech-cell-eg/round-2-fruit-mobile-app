import 'package:flutter/material.dart';
import 'package:fruit_app/core/constants/app_strings.dart';
import 'package:fruit_app/core/constants/app_text_styles.dart';
import 'package:fruit_app/core/helper/extensions.dart';
import 'package:fruit_app/core/routing/routes.dart';
import 'package:fruit_app/core/widgets/custom_text_button.dart';
import 'package:fruit_app/core/widgets/custom_text_field.dart';

class AuthField extends StatefulWidget {
  const AuthField({super.key});

  @override
  State<AuthField> createState() => _AuthFieldState();
}

class _AuthFieldState extends State<AuthField> {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Form(
        key: globalKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Text(
              AppStrings.whatIsYourFirstName,
              style: AppTextStyles.size20mainTextColorW500,
            ),
            SizedBox(height: 8),
            CustomTextField(controller: nameController,),
            Padding(
              padding: EdgeInsets.only(top: context.screenHeight() * .05),
              child: CustomTextButton(
                  text: AppStrings.startOrdering,
                  onTap: () {
                    if (globalKey.currentState!.validate()){
                      context.pushReplacmentNamed(Routes.homeScreen,nameController.text);
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }
}
