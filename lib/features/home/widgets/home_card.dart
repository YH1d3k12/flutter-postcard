import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final IconData icon;
  final String title;
  const HomeCard({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    // Pega o tamanho da tela
    final screenWidth = MediaQuery.of(context).size.width;

    // Define o tamanho do ícone e do container baseado na largura da tela
    double iconSize = screenWidth * 0.05; // 5% da largura da tela
    if (iconSize < 40) iconSize = 40; // tamanho mínimo
    if (iconSize > 80) iconSize = 80; // tamanho máximo

    double containerWidth = screenWidth * 0.15; // 15% da largura da tela
    if (containerWidth < 120) containerWidth = 120; // largura mínima
    if (containerWidth > 200) containerWidth = 200; // largura máxima

    return Container(
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
    );
  }
}
