
import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class CustomPayButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomPayButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.whiteColor, 
        foregroundColor: AppColors.primaryColor, 
        side:   BorderSide(color: AppColors.primaryColor, width: 1),  
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), 
          
        ),
        minimumSize: Size(115, 56),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
