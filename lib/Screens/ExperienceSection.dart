import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          Text(
            "Experience",
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(color: color),
          ),
          const SizedBox(height: 16),
          Text(
            " Internship at CodeAlpha\n"
            "Flutter App Development – 2025\n"
            "During this internship, I worked on building real-world mobile applications using Flutter. I learned how to structure Flutter projects, create responsive UIs, and integrate backend services like Firebase.",
          ),
        ],
      ),
    );
  }
}
