import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 600;
    final color = Theme.of(context).primaryColor;

    return Container(
      padding: const EdgeInsets.all(32),
      color: Theme.of(context).brightness == Brightness.dark
          ? Colors.black
          : Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Projects",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontSize: isMobile ? 22 : 28,
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            children: const [
              ProjectCard(
                title: "NutriScan App",
                description: "Scan food and get nutritional suggestions.",
                url: "https://github.com/Muhammad-Rashid-172002/intership_Task",
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqTU79nT6DMsy_GKPD0YJyX-k4bGqAx3DOqw&s",
              ),
              ProjectCard(
                title: "Chat App",
                description: "Real-time chat with Firebase and media support.",
                url:
                    "https://github.com/Muhammad-Rashid-172002/Firebase_Console",
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcQtbNFhLZ0r0TTIVRoVxv6UTExZlGcfFjlg&s",
              ),
              ProjectCard(
                title: "Language Learning App",
                description:
                    "Language quizzes and conversation practice using Firebase.",
                url:
                    "https://github.com/Muhammad-Rashid-172002/language_learning_app",
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReNwV9_KWFhS4-8vr3BlAOFWvCQGsraXN28w&s",
              ),
              ProjectCard(
                title: "Expense Tracker App",
                description:
                    "Track daily expenses with smart analytics and charts.",
                url: "https://github.com/Muhammad-Rashid-172002/ExpenseTracker",
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHf0Y9zwg-CLKFqShnX73MC_nvOyXw_cov6Q&s",
              ),
              ProjectCard(
                title: "Portfolio Website",
                description:
                    "A responsive personal portfolio built with Flutter Web. Showcases bio, projects, and contact info.",
                url: "https://github.com/Muhammad-Rashid-172002/Portfolio",
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmEEw12ehjg103P5Me-w6wCDHoGtXcTCO8Ig&s",
              ),
              ProjectCard(
                title: "Chess Game",
                description:
                    "2-player chess game in Flutter with board layout, smooth gameplay, and local multiplayer logic.",
                url: "https://github.com/Muhammad-Rashid-172002/Chess_Game",
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnsocjrTmEYaShW16B-jtdZS-E-4tXvIoDjg&s",
              ),
              ProjectCard(
                title: "Fitness App",
                description:
                    "Track workouts, set fitness goals, and monitor progress with a sleek and user-friendly Flutter UI.",
                url: "https://github.com/Muhammad-Rashid-172002/Fitness_App",
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNP8hVL7CffqyOvFCadqmbCisZuqNHpro_QQ&s",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String url;
  final String imageUrl;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.url,
    required this.imageUrl,
  });

  Future<void> _launchURL() async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final cardWidth = width < 600 ? width * 0.9 : 260;

    return GestureDetector(
      onTap: _launchURL,
      child: Card(
        elevation: 5,
        color: isDarkMode ? Colors.grey[900] : Colors.grey[100],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          width: cardWidth.toDouble(),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imageUrl,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                description,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: isDarkMode ? Colors.white70 : Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
