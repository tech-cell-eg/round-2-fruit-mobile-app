import 'package:flutter/material.dart';
import 'package:fruit_app/core/helper/extensions.dart';
import 'package:fruit_app/core/routing/routes.dart';
import '../../../core/constants/app_colors.dart';
import 'Date_And_Ccv_Widget.dart';

Future<dynamic> payCardWidget(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: SingleChildScrollView(
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Card Holder\'s Name',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: context.screenWidth() * 0.3),
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
                    decoration: const InputDecoration(
                      labelText: 'Adolphus Chris',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Card Number',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: '1234 5678 9012 1314',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DateAndCcvWidget(
                        labelText: '10/30',
                        text: 'Date',
                      ),
                      DateAndCcvWidget(
                        labelText: '123',
                        text: 'CCV',
                      ),
                    ],
                  ),
                  const SizedBox(height: 22),
                  Container(
                    height: 98,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(
                        24,
                      ),
                    ),
                    child: Center(
                      child: SizedBox(
                        height: 56,
                        width: 135,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: AppColors.whiteColor,
                          ),
                          onPressed: () {
                            context.pushReplacmentNamed(Routes.congratsScreen);
                          },
                          child: Text(
                            'Complete Order',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Positioned(
          //   bottom: context.screenHeight() * 0.5,
          // left: context.screenWidth() * 0.45,
          //   child:
          // ),
        ],
      );
    },
  );
}
