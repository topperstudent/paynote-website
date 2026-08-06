import 'package:flutter/material.dart';
import '../../privacy_policy/privacy_policy_screen.dart';
import '../../terms/terms_conditions_screen.dart';
import '../../about/about_screen.dart';
import '../../contact/contact_screen.dart';

class WebsiteFooter extends StatelessWidget {
  const WebsiteFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF111827), // Capitalization standard for hex colors
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 35,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Ensures the column only takes up necessary space
        children: [
          const Text(
            "PayNote",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Digital Billing Made Simple",
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 30),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 10,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const AboutScreen(),
                    ),
                  );
                },
                child: const Text(
                  "About",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const PrivacyPolicyScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Privacy Policy",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const TermsConditionsScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Terms",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ContactScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Contact",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          const Divider(
            color: Colors.white24,
          ),
          const SizedBox(height: 15),
          const Text(
            "© 2026 PayNote. All Rights Reserved.",
            style: TextStyle(
              color: Colors.white60,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}