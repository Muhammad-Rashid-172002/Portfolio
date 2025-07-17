import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  Future<void> _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(32),
      color: Theme.of(context).cardColor,
      child: Column(
        children: [
          Text(
            "Contact Me",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontSize: width < 600 ? 22 : 28,
            ),
          ),
          const SizedBox(height: 16),
          const Text("Email: muhammadrashid172002@gmail.com"),
          const SizedBox(height: 8),
          const Text("LinkedIn: linkedin.com/in/muhammad-rashid"),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.github),
                onPressed: () =>
                    _launchURL('https://github.com/Muhammad-Rashid-172002'),
              ),
              const SizedBox(width: 16),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.linkedin),
                onPressed: () => _launchURL(
                  'https://www.linkedin.com/in/muhammad-rashid-59062a295/',
                ),
              ),
              const SizedBox(width: 16),
              IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.whatsapp,
                  color: Colors.green,
                ),
                onPressed: () => _launchURL('https://wa.me/03195176014'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
