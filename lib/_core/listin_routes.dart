import 'package:flutter/material.dart';
import 'package:listin_drift_hive/authentication/models/mock_user.dart';
import 'package:listin_drift_hive/authentication/screens/auth_screen.dart';
import 'package:listin_drift_hive/listins/models/listin.dart';
import 'package:listin_drift_hive/listins/screens/home_screen.dart';
import 'package:listin_drift_hive/products/screens/products_screen.dart';

class ListinRoutes {
  static const String auth = "auth";
  static const String home = "home";
  static const String products = "products";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case auth:
        return MaterialPageRoute(builder: (_) => const AuthScreen());
      case home:
        return MaterialPageRoute(builder: (_) => HomeScreen(user: MockUser()));
      case products:
        Listin listin = settings.arguments as Listin;
        return MaterialPageRoute(
          builder: (_) => ProductsScreen(listin: listin),
        );
      default:
        return MaterialPageRoute(builder: (_) => const AuthScreen());
    }
  }
}
