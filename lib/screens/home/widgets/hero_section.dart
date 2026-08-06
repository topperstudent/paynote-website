import 'package:flutter/material.dart';
import '../../../core/app_theme.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 70,
        vertical: 80,
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFF8FAFC),
            Color(0xFFEFF6FF),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        children: [
          /// LEFT SIDE
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text(
                    "India's Smart Digital Billing Platform",
                    style: TextStyle(
                      color: AppTheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                const Text(
                  "Every Bill.\nDelivered Digitally.",
                  style: TextStyle(
                    fontSize: 56,
                    fontWeight: FontWeight.bold,
                    height: 1.1,
                  ),
                ),
                const SizedBox(height: 25),
                const SizedBox(
                  width: 550,
                  child: Text(
                    "PayNote helps shop owners generate professional bills, manage customers, track sales, and instantly send invoices on WhatsApp—all from one simple app.",
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.8,
                      color: Colors.black54,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.play_arrow),
                      label: const Text("Coming Soon"),
                    ),
                    const SizedBox(width: 20),
                    OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.info_outline),
                      label: const Text("Learn More"),
                    ),
                  ],
                ),
                const SizedBox(height: 45),
                const Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    ),
                    SizedBox(width: 8),
                    Text("WhatsApp Billing"),
                    SizedBox(width: 25),
                    Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    ),
                    SizedBox(width: 8),
                    Text("Inventory"),
                    SizedBox(width: 25),
                    Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    ),
                    SizedBox(width: 8),
                    Text("Analytics"),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 50),
          /// RIGHT SIDE
          Expanded(
            flex: 4,
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 430,
                    width: 430,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(.08),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Image.asset(
                    "assets/images/phone_mockup.png",
                    height: 620,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}