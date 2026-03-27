import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'core/services/url_launcher.dart';
import 'features/wanted/widgets/wanted_header.dart';
import 'features/wanted/widgets/wanted_portrait.dart';
import 'features/wanted/widgets/wanted_info.dart';
import 'features/wanted/widgets/wanted_level.dart';
import 'features/wanted/widgets/wanted_reward.dart';
import 'features/wanted/widgets/wanted_alert.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NCPD Wanted',
      theme: ThemeData.dark(),
      home: const WantedScreen(),
    );
  }
}

class WantedScreen extends StatelessWidget {
  const WantedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0d0d0f),
      appBar: AppBar(
        title: const Text("NCPD - WANTED DATABASE"),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          width: 420,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xff15151a),
            border: Border.all(color: Colors.yellowAccent, width: 3),
            boxShadow: [
              BoxShadow(
                color: Colors.yellowAccent.withOpacity(0.4),
                blurRadius: 20,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              /// WANTED TITLE
              WantedHeader(),
              /// IMAGE
              WantedPortrait(),
              /// INFO
              WantedInfo(),
              /// THREAT LEVEL
              WantedLevel(),
              /// REWARD
              WantedReward(),
              /// ALERT
              WantedAlert(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "© 2077 NCPD - Night City Police Department",
              style: TextStyle(
                color: Colors.white54,
                letterSpacing: 1,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 8),

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
      ),
    );
  }
}
