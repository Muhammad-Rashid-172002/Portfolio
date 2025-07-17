import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 800;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepPurple, Colors.black],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildTextContent(context, isMobile),
                const SizedBox(height: 32),
                _buildImage(),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: _buildTextContent(context, isMobile)),
                const SizedBox(width: 32),
                _buildImage(),
              ],
            ),
    );
  }

  Widget _buildTextContent(BuildContext context, bool isMobile) {
    return Column(
      crossAxisAlignment: isMobile
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Text(
          "Hi, I'm Muhammad Rashid",
          textAlign: isMobile ? TextAlign.center : TextAlign.left,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: isMobile ? 24 : 32,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          "Flutter Developer | Firebase | REST APIs | UI/UX",
          textAlign: isMobile ? TextAlign.center : TextAlign.left,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontSize: isMobile ? 16 : 20,
            color: Colors.white70,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          "I build high-performance, visually appealing mobile and web applications using Flutter.",
          textAlign: isMobile ? TextAlign.center : TextAlign.left,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontSize: isMobile ? 14 : 16,
            color: Colors.white70,
          ),
        ),
        const SizedBox(height: 28),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            backgroundColor: Colors.white,
            foregroundColor: Colors.deepPurple,
          ),
          onPressed: () async {
            final Uri emailUri = Uri(
              scheme: 'mailto',
              path: 'muhammadrashid172002@gmail.com',
              query: 'subject=Let\'s Work Together&body=Hi Muhammad Rashid,',
            );

            if (await canLaunchUrl(emailUri)) {
              await launchUrl(emailUri);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Could not launch email client.')),
              );
            }
          },
          child: const Text("Contact Me"),
        ),
      ],
    );
  }

  Widget _buildImage() {
    return Container(
      height: 300,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
          image: AssetImage(
            "assets/IMG-20250307-WA0029.jpg",
          ), // <-- Replace with your image URL
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
