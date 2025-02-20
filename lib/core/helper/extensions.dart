import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  Future<dynamic> pushNamed(routeName, [Object? arguments]) {
    return Navigator.pushNamed(this, routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacmentNamed(routeName, [Object? arguments]) {
    return Navigator.pushReplacementNamed(this, routeName,
        arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(routeName, [Object? arguments]) {
    return Navigator.pushNamedAndRemoveUntil(this, routeName, (route) => false,
        arguments: arguments);
  }

  void pop() => Navigator.pop(this);
}

extension ScreenUtils on BuildContext {
  double screenHeight() {
    return MediaQuery.of(this).size.height;
  }

  double screenWidth() {
    return MediaQuery.of(this).size.width;
  }
}
