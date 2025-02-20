import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_styles.dart';
import 'Custom_Pay_Button.dart';

void showDeliveryModal(BuildContext context) {
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
              const Text(
                'Delivery address',
                style: AppTextStyles.size20mainTextColorW500,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomPayButton(
                      text: 'Pay Card',
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  CustomPayButton(
                      text: 'Delivery',
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: -50,
          left: 150,
          child: FloatingActionButton(
            mini: true,
            backgroundColor: AppColors.whiteColor,
            elevation: 5,
            onPressed: () => Navigator.pop(context),
            child: const Icon(Icons.close, color: Colors.black),
          ),
        ),
      ]);
    },
  );
}
