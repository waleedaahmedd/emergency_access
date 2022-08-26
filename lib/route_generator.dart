import 'package:emergency_access/screens/home_screen.dart';
import 'package:emergency_access/screens/profile_screen.dart';
import 'package:emergency_access/screens/qr_screen.dart';
import 'package:emergency_access/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/profile_screen':
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case '/home_screen':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/Qr_screen':
        return MaterialPageRoute(builder: (_) => const QrScreen());

      /* case '/tasting_details':
        return MaterialPageRoute(
            builder: (_) => const TastingDetailsScreen(),
            settings: const RouteSettings(name: '/tasting_details'));*/
      /* case '/wines_details':
        return MaterialPageRoute(
            builder: (_) => WinesDetailScreen(
                  reviewButton: args,
                ));*/

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Center(
          child: Text('Something wrong in routes'),
        ),
      );
    });
  }
}
