import 'package:flutter/material.dart';

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
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              /// WANTED TITLE
              const Text(
                "WANTED",
                style: TextStyle(
                  color: Color(0xffffd400),
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 6,
                  shadows: [
                    Shadow(
                      color: Colors.orange,
                      blurRadius: 15,
                    )
                  ],
                ),
              ),

              const Text(
                "DEAD OR ALIVE",
                style: TextStyle(
                  color: Colors.white70,
                  letterSpacing: 5,
                  fontSize: 16,
                ),
              ),

              /// IMAGE
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.cyanAccent,
                    width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.cyanAccent.withOpacity(0.4),
                      blurRadius: 15,
                    )
                  ],
                ),
                child: Image.asset(
                  'djalma.jpg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),

              /// NAME
              const Text(
                "DJALMA HIDEKI YAMAMOTO",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  letterSpacing: 3,
                ),
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
                    shadows: [
                      Shadow(
                        color: Colors.orange,
                        blurRadius: 10,
                      )
                    ],
                  ),
                ),
              ),

              /// WARNING
              const Text(
                "ARMED & EXTREMELY DANGEROUS",
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 16,
                  letterSpacing: 2,
                ),
              ),

              const Icon(
                Icons.warning_amber_rounded,
                color: Colors.redAccent,
                size: 48,
              )
            ],
          ),
        ),
      ),
    );
  }
}