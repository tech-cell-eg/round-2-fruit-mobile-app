import 'package:flutter/material.dart';
import 'package:fruit_app/core/helper/extensions.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_styles.dart';
import '../../order_list_feature/ui/widgets/custom_pp_bar.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              topPositioned: context.screenHeight() * 0.02,
              leftPositioned: 15,
              bottomPositioned: 0,
              titleleftPositioned: 50,
              titlerightpositioned: 0,
              titletopPositioned: context.screenHeight() * 0.07,
              title: 'Delivery Status',
            ),
            SizedBox(
              height: 40,
            ),
            DelivaryStatusItem(
              text: 'Order Taken',
            ),
            DelivaryStatusItem(
              text: 'Order Is Being Prepared',
            ),
            OrderDeliveredWidget(),
            SizedBox(
              height: 48,
            ),
            DelivaryStatusItem(
              text: 'Order Received',
            ),
          ],
        ),
      ),
    );
  }
}

class OrderDeliveredWidget extends StatelessWidget {
  const OrderDeliveredWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 80,
      // color: AppColors.whiteColor,
      child: ListTile(
        leading: Container(
          width: 65,
          height: 64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.lightOrange,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              'assets/images/map.png',
              width: 40,
              height: 40,
              fit: BoxFit.fill,
            ),
          ),
        ),
        title: Text(
          'Order Is Being Delivered',
          style: AppTextStyles.size16BalckW500,
        ),
        subtitle: Text(
          'Your delivery agent is coming',
          style: AppTextStyles.size14BlackW400,
        ),
        trailing: Icon(
          Icons.phone,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}

class DelivaryStatusItem extends StatelessWidget {
  final String text;
  const DelivaryStatusItem({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 48.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        width: 327,
        height: 64,
        color: AppColors.whiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Container(
                width: 65,
                height: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.lightOrange,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    'assets/images/map.png',
                    width: 40,
                    height: 40,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Text(
              text,
              style: AppTextStyles.size16BalckW500,
            ),
            Spacer(),
            Icon(Icons.square_rounded, color: AppColors.green),
          ],
        ),
      ),
    );
  }
}
