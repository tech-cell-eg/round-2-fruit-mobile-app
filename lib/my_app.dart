import 'package:flutter/material.dart';
import 'package:fruit_app/core/constants/app_strings.dart';

import 'features/order_list_feature/order_list_feature_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: AppStrings.appFont),
      home:OrderListFeatureScreen(),
    );
  }
}
