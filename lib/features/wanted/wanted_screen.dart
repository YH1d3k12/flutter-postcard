import 'package:flutter/material.dart';
import '../wanted/widgets/wanted_header.dart';
import '../wanted/widgets/wanted_portrait.dart';
import '../wanted/widgets/wanted_info.dart';
import '../wanted/widgets/wanted_level.dart';
import '../wanted/widgets/wanted_reward.dart';
import '../wanted/widgets/wanted_alert.dart';
import '../../shared/widgets/footer.dart';

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
      bottomNavigationBar: const Footer(),
    );
  }
}
