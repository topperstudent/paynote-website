import 'package:flutter/material.dart';
import '../../../core/app_theme.dart';

class FeatureSection extends StatelessWidget {
  const FeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    final features = [
      {
        "icon": Icons.receipt_long_rounded,
        "title": "Digital Billing",
        "desc":
        "Create professional GST-ready bills within seconds."
      },
      {
        "icon": Icons.chat_rounded,
        "title": "WhatsApp Bills",
        "desc":
        "Send invoices instantly to customers via WhatsApp."
      },
      {
        "icon": Icons.people_alt_rounded,
        "title": "Customer Management",
        "desc":
        "View customer history and spending in one place."
      },
      {
        "icon": Icons.inventory_2_rounded,
        "title": "Inventory",
        "desc":
        "Manage products, prices and stock effortlessly."
      },
      {
        "icon": Icons.bar_chart_rounded,
        "title": "Business Analytics",
        "desc":
        "Track sales, customers and business growth."
      },
      {
        "icon": Icons.cloud_done_rounded,
        "title": "Cloud Backup",
        "desc":
        "Your billing data stays safe and synced securely."
      },
    ];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 70,
        vertical: 80,
      ),
      color: Colors.white,
      child: Column(
        children: [
          const Text(
            "Everything You Need",
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const SizedBox(
            width: 650,
            child: Text(
              "PayNote is designed to simplify billing, inventory management and customer handling for every shop owner.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
                height: 1.6,
              ),
            ),
          ),
          const SizedBox(height: 50),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: features.length,
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 25,
              mainAxisSpacing: 25,
              childAspectRatio: 1.15,
            ),
            itemBuilder: (context, index) {
              final feature = features[index];

              return AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                padding: const EdgeInsets.all(28),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: Colors.grey.shade200,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.08),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius:
                        BorderRadius.circular(16),
                      ),
                      child: Icon(
                        feature["icon"] as IconData,
                        color: AppTheme.primary,
                        size: 32,
                      ),
                    ),
                    const SizedBox(height: 22),
                    Text(
                      feature["title"] as String,
                      style: const TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      feature["desc"] as String,
                      style: const TextStyle(
                        color: Colors.black54,
                        height: 1.6,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}