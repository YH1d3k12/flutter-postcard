
import 'package:flutter/material.dart';
import '../../features/boot/boot_screen.dart';
import '../../features/home/home_screen.dart';
import '../../features/login/login_screen.dart';
import '../../features/wanted/wanted_screen.dart';

class AppRoutes {
  static const boot = '/boot';
  static const home = '/home';
  static const wanted = '/wanted';
  static const login = '/login';

  static Map<String, WidgetBuilder> routes = {
    boot: (_) => const BootScreen(),
    login: (_) => const LoginScreen(),
    home: (_) => const HomeScreen(),
    wanted: (_) => const WantedScreen()
  };
}
