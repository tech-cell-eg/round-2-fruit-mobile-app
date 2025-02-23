import 'package:flutter/material.dart';
import 'package:fruit_app/core/helper/extensions.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Container(
        width: context.screenWidth(),
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
            'Quinoa fruit salad',
            style: AppTextStyles.size16BalckW500,
          ),
          subtitle: Text(
            '2 packs',
            style: AppTextStyles.size14BlackW400,
          ),
          trailing:
              Text("\$ 20,000", style: AppTextStyles.size16mainTextColorW500),
        ),
      ),
    );
  }
}
