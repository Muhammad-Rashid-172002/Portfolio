import 'package:flutter/material.dart';

class CertificationsSection extends StatelessWidget {
  const CertificationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    // Dynamic background and text colors
    final backgroundColor = isDarkMode ? Colors.black : Colors.white;
    final textColor = isDarkMode ? Colors.white70 : Colors.black87;
    final headingColor = isDarkMode
        ? Colors.white
        : Theme.of(context).primaryColor;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      color: backgroundColor,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: isMobile
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          Text(
            "🎓 Certifications & Projects",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: headingColor,
              fontWeight: FontWeight.bold,
            ),
            textAlign: isMobile ? TextAlign.center : TextAlign.start,
          ),
          const SizedBox(height: 24),
          _buildCertificate(
            "📜 Completed Flutter App Development from SMIT (Saylani Mass IT Training)",
            textColor,
          ),
          _buildCertificate(
            "📜 CodeAlpha Flutter Internship Certificate (2025)",
            textColor,
          ),
          _buildCertificate(
            "📱 Built a Language Learning App during internship",
            textColor,
          ),
          _buildCertificate(
            "🏋️ Built a Fitness App during internship",
            textColor,
          ),
        ],
      ),
    );
  }

  Widget _buildCertificate(String title, Color textColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(fontSize: 18, color: textColor)),
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 16, color: textColor),
            ),
          ),
        ],
      ),
    );
  }
}
