import 'package:flutter/material.dart';
import 'package:fruit_app/core/routing/routes.dart';
import 'package:fruit_app/features/welcom/welcom_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case Routes.welcomScreen:
        return MaterialPageRoute(builder: (_) => const WelcomScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}'))));
    }
  }
}
