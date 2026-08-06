import 'package:flutter/material.dart';
import '../../../core/app_theme.dart';

class FAQSection extends StatelessWidget {
  const FAQSection({super.key});

  @override
  Widget build(BuildContext context) {
    final faqs = [
      {
        "q": "Is PayNote free?",
        "a":
        "PayNote uses an affordable pay-per-bill model. You only pay for the bills you send."
      },
      {
        "q": "Does my customer need to install PayNote?",
        "a":
        "No. Customers receive their bill directly on WhatsApp. No app installation is required."
      },
      {
        "q": "Is my billing data secure?",
        "a":
        "Yes. Your business data is securely stored and protected using encrypted cloud infrastructure."
      },
      {
        "q": "Can I manage inventory?",
        "a":
        "Yes. You can add products, edit prices, update stock, and reuse saved products while creating bills."
      },
      {
        "q": "Can I access customer history?",
        "a":
        "Absolutely. PayNote stores previous bills and customer purchase history for quick access."
      },
      {
        "q": "Can I recharge my billing credits anytime?",
        "a":
        "Yes. You can recharge your wallet anytime using secure online payment methods."
      },
    ];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 70,
        vertical: 90,
      ),
      color: Colors.white,
      child: Column(
        children: [
          const Text(
            "Frequently Asked Questions",
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const SizedBox(
            width: 700,
            child: Text(
              "Everything you need to know before getting started.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 45),
          SizedBox(
            width: 900,
            child: Column(
              children: faqs.map((faq) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 14),
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: ExpansionTile(
                      tilePadding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 8,
                      ),
                      childrenPadding: const EdgeInsets.fromLTRB(
                        24,
                        0,
                        24,
                        24,
                      ),
                      iconColor: AppTheme.primary,
                      collapsedIconColor: AppTheme.primary,
                      title: Text(
                        faq["q"]!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            faq["a"]!,
                            style: const TextStyle(
                              fontSize: 16,
                              height: 1.7,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}