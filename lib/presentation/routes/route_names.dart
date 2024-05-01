import 'package:flutter/material.dart';
import 'package:socialmediaapp/presentation/screen/createandlogin/create_and_login_screen.dart';

class RouteNames {
  static const String splashScreen = '/splashScreen';

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const CreateAndLoginScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No Route Found ${settings.name}'),
            ),
          ),
        );
    }
  }
}
