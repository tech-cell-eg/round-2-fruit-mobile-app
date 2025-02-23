import 'package:flutter/material.dart';
import 'package:fruit_app/core/constants/app_strings.dart';
import 'package:fruit_app/core/constants/app_text_styles.dart';
import 'package:fruit_app/features/home/ui/widgets/filter_tabs.dart';
import 'package:fruit_app/features/home/ui/widgets/home_custom_app_bar.dart';
import 'package:fruit_app/features/home/ui/widgets/recommended_combo_list_view.dart';
import 'package:fruit_app/features/home/ui/widgets/search_and_filters.dart';
import 'package:fruit_app/features/home/ui/widgets/welcome_text_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final name = ModalRoute.of(context)?.settings.arguments as String?;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            children: [
              HomeCustomAppBar(),
              WelcomTextHome(name: name),
              SearchAndFilters(),
              SizedBox(height: 40),
              Text(
                AppStrings.recommendedComobo,
                style: AppTextStyles.size24mainTextColorW500,
              ),
              SizedBox(height: 24),
              RecommendedComboListView(),
              SizedBox(height: 40),
              SizedBox(height: 300, child: FilterTabs()),
            ],
          ),
        ),
      ),
    );
  }
}
