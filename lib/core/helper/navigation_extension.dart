import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  Future<dynamic> pushNamed(Object? arguments, {required String routeName}) {
    return Navigator.pushNamed(this, routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacmentNamed(Object? arguments,
      {required String routeName}) {
    return Navigator.pushReplacementNamed(this, routeName,
        arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(Object? arguments,
      {required String routeName}) {
    return Navigator.pushNamedAndRemoveUntil(this, routeName, (route)=> false,
        arguments: arguments);
  }

  void pop() => Navigator.pop(this);
}
