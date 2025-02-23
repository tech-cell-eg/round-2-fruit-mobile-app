import 'package:flutter/material.dart';
import 'package:fruit_app/core/helper/extensions.dart';
import 'package:fruit_app/core/routing/routes.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/widgets/Custom_Button_Widget.dart';
import '../../../input_card_details/ui/input_card_details_screen.dart';

void showPayCard(context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return Stack(clipBehavior: Clip.none, children: [
        Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'Delivery address',
                    style: AppTextStyles.size20mainTextColorW500,
                  ),
                  SizedBox(width: context.screenWidth() * 0.4),
                  FloatingActionButton(
                    mini: true,
                    backgroundColor: AppColors.whiteColor,
                    elevation: 5,
                    onPressed: () => Navigator.pop(context),
                    child: const Icon(Icons.close, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: '10th avenue, Lekki, Lagos State',
                  border: OutlineInputBorder(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 16),
                child: Text(
                  'Number we can call',
                  style: AppTextStyles.size20mainTextColorW400.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'phone',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomPrimaryButtonWidget(
                        context: context,
                        text: 'Pay Card',
                        width: 115,
                        height: 56,
                        onTap: () {
                          Navigator.pop(context);
                          payCardWidget(context);
                        }),
                    CustomPrimaryButtonWidget(
                        context: context,
                        text: 'Delivery',
                        width: 115,
                        height: 56,
                        onTap: () {
                          context.pushReplacmentNamed(Routes.congratsScreen);
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Positioned(
        //   bottom: context.screenHeight() * 0.37,
        //   left: context.screenWidth() * 0.45,
        //   child:
        // ),
      ]);
    },
  );
}
