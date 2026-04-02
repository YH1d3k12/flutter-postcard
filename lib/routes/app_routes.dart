
import 'package:flutter/material.dart';
import '../../features/home/home_screen.dart';
import '../../features/login/login_screen.dart';
import '../../features/wanted/wanted_screen.dart';

class AppRoutes {
  static const home = '/';
  static const wanted = '/wanted';
  static const login = '/login';

  static Map<String, WidgetBuilder> routes = {
    login: (_) => const LoginScreen(),
    home: (_) => const HomeScreen(),
    wanted: (_) => const WantedScreen()
  };
}
