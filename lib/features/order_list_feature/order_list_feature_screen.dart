import 'package:flutter/material.dart';
import 'package:fruit_app/core/constants/app_colors.dart';
import 'package:fruit_app/core/widgets/Custom_Button_Widget.dart';
import '../../core/constants/app_text_styles.dart';
import 'widgets/custom_bottom_sheet.dart';
import 'widgets/custom_pp_bar.dart';
import 'widgets/item_widget.dart';

class OrderListFeatureScreen extends StatelessWidget {
  const OrderListFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: CustomAppBar(),
      body: Column(
        children: [
          CustomAppBar(),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ItemWidget();
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Total',
                      style: AppTextStyles.size16BalckW500,
                    ),
                    const Text(
                      '\$ 60,000',
                      style: AppTextStyles.size24mainTextColorW500,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    showDeliveryModal(context);
                  },
                  child: CustomPrimaryButtonWidget(width: 199, height: 56, text: 'Checkout', onPressed: () {  },),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
