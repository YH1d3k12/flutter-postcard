import 'package:flutter/material.dart';
import '../../../routes/app_routes.dart'; // import para AppRoutes

class HomeCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String route;

  const HomeCard({
    super.key,
    required this.icon,
    required this.title,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    double iconSize = screenWidth * 0.05;
    if (iconSize < 40) iconSize = 40;
    if (iconSize > 80) iconSize = 80;

    double containerWidth = screenWidth * 0.15;
    if (containerWidth < 120) containerWidth = 120;
    if (containerWidth > 200) containerWidth = 200;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        child: Container(
          width: containerWidth,
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: const Color(0xff1a1a1f),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.cyanAccent.withOpacity(0.5)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.cyanAccent, size: iconSize),
              const SizedBox(height: 10),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.cyanAccent,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
