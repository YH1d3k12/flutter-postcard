import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'core/services/url_launcher.dart';

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
              Column(
                children: const [
                  Text(
                    "WANTED",
                    style: TextStyle(
                      color: Color(0xffffd400),
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 6,
                      shadows: [Shadow(color: Colors.orange, blurRadius: 15)],
                    ),
                  ),

                  Text(
                    "DEAD OR ALIVE",
                    style: TextStyle(
                      color: Colors.white70,
                      letterSpacing: 5,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),

              /// IMAGE
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.cyanAccent, width: 2),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.cyanAccent.withOpacity(0.4),
                      blurRadius: 15,
                    ),
                  ],
                ),
                child: Image.asset(
                  'djalma.jpg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),

              Column(
                children: const [
                  /// NAME
                  Text(
                    "DJALMA HIDEKI YAMAMOTO",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      letterSpacing: 3,
                    ),
                  ),

                  // TITLE
                  Text(
                    "MILITECH SPECIAL FORCES",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 14,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),

              /// THREAT LEVEL
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "THREAT LEVEL:",
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "HIGH",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              /// REWARD
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellowAccent, width: 2),
                  color: Colors.black,
                ),
                child: const Text(
                  "REWARD 500,000 €\$",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.yellowAccent,
                    fontWeight: FontWeight.bold,
                    shadows: [Shadow(color: Colors.orange, blurRadius: 10)],
                  ),
                ),
              ),

              Column(
                children: const [
                  /// WARNING
                  Text(
                    "ARMED & EXTREMELY DANGEROUS",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 16,
                      letterSpacing: 2,
                    ),
                  ),

                  Icon(
                    Icons.warning_amber_rounded,
                    color: Colors.redAccent,
                    size: 48,
                  ),
                ],
              ),
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
