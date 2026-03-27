import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../core/services/url_launcher.dart'; // seu launcher.dart

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // COPYRIGHT
          const Text(
            "© 2077 NCPD - Night City Police Department",
            style: TextStyle(
              color: Colors.white54,
              letterSpacing: 1,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),

          // CONTATOS
          Row(
            children: [
              // EMAIL
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () => launchURL("mailto:djalmahy@hotmail.com"),
                  child: Row(
                    children: const [
                      Icon(Icons.email, color: Colors.white54, size: 16),
                      SizedBox(width: 6),
                      Text(
                        "djalmahy@hotmail.com",
                        style: TextStyle(color: Colors.white70, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(width: 16),

              // WHATSAPP
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () => launchURL("https://wa.me/5547996700158"),
                  child: Row(
                    children: const [
                      Icon(Icons.phone, color: Colors.white54, size: 16),
                      SizedBox(width: 6),
                      Text(
                        "+55 (47) 99670-0158",
                        style: TextStyle(color: Colors.white70, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(width: 16),

              // LINKEDIN
              IconButton(
                icon: const Icon(
                  FontAwesomeIcons.linkedin,
                  color: Colors.white54,
                  size: 18,
                ),
                onPressed: () =>
                    launchURL("https://linkedin.com/in/seuusuario"),
              ),

              // GITHUB
              IconButton(
                icon: const Icon(FontAwesomeIcons.github),
                onPressed: () => launchURL("https://github.com/seuusuario"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
