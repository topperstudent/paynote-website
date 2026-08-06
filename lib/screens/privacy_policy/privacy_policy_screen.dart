import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Privacy Policy"),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: SelectableText(
          '''
PayNote Privacy Policy

Last Updated: August 2026

PayNote values your privacy. This Privacy Policy explains how we collect, use, and protect your information when you use the PayNote application.

1. Information We Collect

We may collect:

• Name
• Mobile Number
• Business Name
• Business Logo
• Billing Records
• Product & Inventory Data
• Wallet Transactions
• Device Information (for security)

2. How We Use Your Information

We use your information to:

• Generate digital bills
• Store your billing history
• Manage your inventory
• Process wallet recharges
• Improve app performance
• Prevent fraud and abuse

3. Customer Information

Customer names and phone numbers entered into bills are stored only for billing purposes and are never sold or shared with third parties.

4. Payments

Wallet recharges are processed securely using Razorpay. PayNote never stores your banking or card information.

5. Data Security

We use secure servers and encrypted communication wherever possible to protect your data.

6. Data Sharing

We do not sell your personal information.

We may share data only when required by law or to provide essential services (such as payment processing).

7. Your Rights

You may request:

• Access to your data
• Correction of your information
• Deletion of your account

8. Contact

For privacy-related questions:

Phone: 7741815877
Email: paynote.dhumal@gmail.com
Website: https://paynote.website

9. Changes

We may update this Privacy Policy from time to time. Updates will be posted on this page.

By using PayNote, you agree to this Privacy Policy.
''',
          style: TextStyle(
            fontSize: 16,
            height: 1.7,
          ),
        ),
      ),
    );
  }
}