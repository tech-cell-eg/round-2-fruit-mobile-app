import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/core/constants/app_icons.dart';
import 'package:fruit_app/core/constants/app_text_styles.dart';

class QuantityAndPriceProductDetail extends StatefulWidget {
  const QuantityAndPriceProductDetail({
    super.key,
  });

  @override
  State<QuantityAndPriceProductDetail> createState() =>
      _QuantityAndPriceProductDetailState();
}

class _QuantityAndPriceProductDetailState
    extends State<QuantityAndPriceProductDetail> {
  int quanitiy = 1;
  int price = 2000;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: SvgPicture.asset(
            AppIcons.iconsMinusCircle,
          ),
          onPressed: () {
            setState(() {
              if (quanitiy > 0) {
                quanitiy--;
                price = price - 2000;
              }
            });
          },
        ),
        SizedBox(width: 10),
        Text(
          "$quanitiy",
          style: AppTextStyles.size24mainTextColorW400,
        ),
        SizedBox(width: 10),
        IconButton(
          iconSize: 50,
          icon: SvgPicture.asset(
            AppIcons.iconsLargePlus,
          ),
          onPressed: () {
            setState(() {
              quanitiy++;
              price = price + 2000;
            });
          },
        ),
        Spacer(),
        SvgPicture.asset(
          AppIcons.iconsPound,
        ),
        SizedBox(width: 10),
        Text(
          "$price",
          style: AppTextStyles.size24mainTextColorW500,
        ),
      ],
    );
  }
}
