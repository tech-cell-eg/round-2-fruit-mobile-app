import 'package:flutter/material.dart';
import 'package:fruit_app/core/routing/routes.dart';
import 'package:fruit_app/features/auth/UI/screens/auth_screen.dart';
import 'package:fruit_app/features/congrates/congrates_screen.dart';
import 'package:fruit_app/features/home/ui/screens/home_screen.dart';
import 'package:fruit_app/features/order_list_feature/ui/order_list_feature_screen.dart';
import 'package:fruit_app/features/product_details/ui/screens/product_details_screen.dart';
import 'package:fruit_app/features/track_order/ui/track_order_screen.dart';
import 'package:fruit_app/features/welcom/UI/screens/welcom_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.welcomScreen:
        return MaterialPageRoute(builder: (_) => const WelcomScreen());
      case Routes.authScreen:
        return MaterialPageRoute(builder: (_) => const AuthScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.productDetailsScreen:
        return MaterialPageRoute(builder: (_) => const ProductDetailsScreen());
      case Routes.myBasketScreen:
        return MaterialPageRoute(builder: (_) => const OrderListFeatureScreen());
      case Routes.congratsScreen:
        return MaterialPageRoute(builder: (_) => const CongratesScreen());
      case Routes.trackOrderScreen:
        return MaterialPageRoute(builder: (_) => const TrackOrderScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}'))));
    }
  }
}
