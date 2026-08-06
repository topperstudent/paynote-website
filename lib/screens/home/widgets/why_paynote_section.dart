import 'package:flutter/material.dart';
import '../../../core/app_theme.dart';

class WhyPayNoteSection extends StatelessWidget {
  const WhyPayNoteSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 70,
        vertical: 90,
      ),
      decoration: BoxDecoration(
        color: Colors.blue.shade50.withOpacity(.35),
      ),
      child: Row(
        children: [
          /// LEFT SIDE
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Why Choose PayNote?",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Built specifically for Indian shop owners, PayNote combines simplicity, speed, and reliability into one powerful billing platform.",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                    height: 1.8,
                  ),
                ),
                const SizedBox(height: 35),
                _point(
                  Icons.check_circle,
                  "Lightning fast bill generation",
                ),
                _point(
                  Icons.check_circle,
                  "Instant WhatsApp invoice sharing",
                ),
                _point(
                  Icons.check_circle,
                  "Customer history & spending",
                ),
                _point(
                  Icons.check_circle,
                  "Inventory management",
                ),
                _point(
                  Icons.check_circle,
                  "Business analytics",
                ),
                _point(
                  Icons.check_circle,
                  "Affordable pay-per-bill model",
                ),
                const SizedBox(height: 40),
                const Wrap(
                  spacing: 18,
                  runSpacing: 18,
                  children: [
                    _StatCard(
                      number: "99.9%",
                      title: "Server Uptime",
                    ),
                    _StatCard(
                      number: "24×7",
                      title: "Cloud Sync",
                    ),
                    _StatCard(
                      number: "Secure",
                      title: "Data Protection",
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 60),
          /// RIGHT SIDE
          Expanded(
            flex: 4,
            child: Image.asset(
              "assets/images/hero.png",
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }

  Widget _point(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppTheme.primary,
            size: 24,
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String number;
  final String title;

  const _StatCard({
    required this.number,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      padding: const EdgeInsets.symmetric(
        vertical: 22,
        horizontal: 18,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.08),
            blurRadius: 18,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            number,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: AppTheme.primary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}