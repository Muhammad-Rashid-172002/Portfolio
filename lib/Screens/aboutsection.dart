import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final color = Theme.of(context).primaryColor;

    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          Text(
            "About Me",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontSize: width < 600 ? 22 : 28,
              color: color,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            '''Hi, I’m Muhammad Rashid, a passionate and results-driven Flutter developer based in Pakistan. I specialize in building high-performance, visually appealing mobile and web applications using Flutter.
I enjoy crafting responsive UIs, integrating Firebase and REST APIs, and ensuring smooth user experiences. Whether it’s a portfolio app, service finder, barcode scanner, or expense tracker — I’m always ready to turn ideas into production-ready apps.
I’ve developed apps that are not only functional but also scalable. With a strong eye for design and a focus on performance, I believe in writing clean, maintainable code that speaks for itself.
''',
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontSize: width < 600 ? 14 : 16),
          ),
        ],
      ),
    );
  }
}
