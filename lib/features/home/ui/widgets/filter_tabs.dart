import 'package:flutter/material.dart';
import 'package:fruit_app/core/constants/app_colors.dart';
import 'package:fruit_app/core/constants/app_strings.dart';
import 'package:fruit_app/core/constants/app_text_styles.dart';
import 'package:fruit_app/features/home/ui/widgets/recommended_combo_list_view.dart';

class FilterTabs extends StatefulWidget {
  const FilterTabs({super.key});

  @override
  State<FilterTabs> createState() => _FilterTabsState();
}

class _FilterTabsState extends State<FilterTabs> {
  int selctedIndex = 0;

  List<String> tabs = [
    AppStrings.hottest,
    AppStrings.popular,
    AppStrings.newCombo,
    AppStrings.top,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: List.generate(
            tabs.length,
            (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selctedIndex = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        tabs[index],
                        style: selctedIndex == index
                            ? AppTextStyles.size24mainTextColorW500
                            : AppTextStyles.size16secTextColorW400,
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 22,
                        height: 2,
                        color: selctedIndex == index
                            ? AppColors.primaryColor
                            : Colors.transparent,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 20),
        RecommendedComboListView(
          containerColor: AppColors.lightOrange,
        )
      ],
    );
  }
}
