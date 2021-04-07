import 'package:flutter/material.dart';
import 'package:naju_bday/core/constants.dart';
import 'package:naju_bday/views/bday_screen.dart';
import 'package:naju_bday/views/girl_screen.dart';
import 'package:naju_bday/views/home_screen.dart';
import 'package:naju_bday/views/smile_screen.dart';
import 'package:naju_bday/views/splash_screen.dart';

class Navigation {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case (Routes.splashScreen):
        {
          return MaterialPageRoute(builder: (_) => SplashScreen());
        }
      case (Routes.homeScreen):
        {
          return MaterialPageRoute(builder: (_) => HomeScreen());
        }
      case (Routes.girlScreen):
        {
          return MaterialPageRoute(builder: (_) => GirlScreen());
        }
      case (Routes.bdayScreen):
        {
          return MaterialPageRoute(builder: (_) => BdayScreen());
        }
      case (Routes.smileScreen):
        {
          return MaterialPageRoute(builder: (_) => SmileScreen());
        }
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${routeSettings.name}'),
            ),
          ),
        );
    }
  }
}
