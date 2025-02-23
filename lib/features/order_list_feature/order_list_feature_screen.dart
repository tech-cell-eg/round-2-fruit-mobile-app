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
          CustomAppBar(
            topPositioned: 10,
            leftPositioned: 50,
            bottomPositioned: 0,
            titletopPositioned: 80,
            titleleftPositioned: 0,
            titlerightpositioned: 0
            ,title: 'My Basket',),
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
                CustomPrimaryButtonWidget(
                  context: context,
                  onTap: () {
                    showPayCard(context);
                  },
                  width: 199,
                  height: 56,
                  text: 'Checkout',
                  
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
