import 'package:flutter/material.dart';
import 'package:fruit_app/core/constants/app_strings.dart';
 
import 'package:fruit_app/core/routing/app_router.dart';
import 'package:fruit_app/core/routing/routes.dart';

import 'features/order_list_feature/order_list_feature_screen.dart';

 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: AppStrings.appFont),
 
      onGenerateRoute:AppRouter().generateRoute,
      initialRoute: Routes.welcomScreen,
 
    );
  }
}
