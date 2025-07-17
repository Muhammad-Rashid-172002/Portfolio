import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/Screens/CertificationsSection.dart';
import 'package:portfolio/Screens/ContactSection.dart';
import 'package:portfolio/Screens/ExperienceSection.dart';
import 'package:portfolio/Screens/HeroSection.dart';
import 'package:portfolio/Screens/ProjectsSection.dart';
import 'package:portfolio/Screens/aboutsection.dart';

class HomePage extends StatelessWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  const HomePage({
    super.key,
    required this.toggleTheme,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Portfolio"),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.wb_sunny : Icons.nightlight_round),
            onPressed: toggleTheme,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroSection(),
            AboutSection(),
            ExperienceSection(),
            ProjectsSection(),
            CertificationsSection(),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}
