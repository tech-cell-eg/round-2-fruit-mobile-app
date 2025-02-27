
import 'package:flutter/material.dart';

import '../../../core/constants/app_text_styles.dart';

class DateAndCcvWidget extends StatelessWidget {

  final String text;
  final String labelText;
  const DateAndCcvWidget({
    super.key, required this.text, required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
      children: [
            Text(text,style: AppTextStyles.size20mainTextColorW500,),
             SizedBox(
              width: 134,
              height: 50,
               child: TextFormField(
    
             decoration:   InputDecoration(
              
              labelText:labelText,  
              border: OutlineInputBorder(),
            ),
          ),
             ),
      ],
    );
  }
}
