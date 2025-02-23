import 'package:flutter/material.dart';
import 'package:fruit_app/features/home/ui/widgets/custom_combo.dart';

class RecommendedComboListView extends StatelessWidget {
  const RecommendedComboListView({super.key, this.containerColor});
  final Color? containerColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomCombo(
            containerColor: containerColor,
          );
        },
      ),
    );
  }
}
