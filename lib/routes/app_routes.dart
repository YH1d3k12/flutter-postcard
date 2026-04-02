
import 'package:flutter/material.dart';
import '../../features/home/home_screen.dart';
import '../../features/wanted/wanted_screen.dart';

class AppRoutes {
  static const home = '/';
  static const wanted = '/wanted';

  static Map<String, WidgetBuilder> routes = {
    home: (_) => const HomeScreen(),
    wanted: (_) => const WantedScreen()
  };
}
