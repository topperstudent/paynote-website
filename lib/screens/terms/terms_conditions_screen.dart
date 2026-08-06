import 'package:flutter/material.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Terms & Conditions"),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: SelectableText(
          '''
PayNote Terms & Conditions

Last Updated: August 2026

Welcome to PayNote.

By using PayNote, you agree to these Terms & Conditions.

1. Acceptance

By installing or using PayNote, you agree to comply with these terms.

2. Service

PayNote provides digital billing, customer management, inventory management, wallet services, and analytics for businesses.

3. User Responsibilities

Users agree to:

• Provide accurate information.
• Use PayNote only for legal business purposes.
• Keep their login credentials secure.
• Not misuse the platform.

4. Billing Credits

PayNote operates on a prepaid wallet/credit system.

Credits purchased are non-refundable unless required by law.

5. Payments

Payments are securely processed using Razorpay or other supported payment gateways.

PayNote never stores your banking or card details.

6. Prohibited Uses

You must not:

• Use PayNote for fraudulent activities.
• Attempt to hack or reverse engineer the application.
• Send spam or illegal content using PayNote.

7. Intellectual Property

All logos, branding, software, and content are the property of PayNote.

8. Limitation of Liability

PayNote is not responsible for:

• Business losses
• Internet outages
• Third-party payment failures
• User mistakes while creating bills

9. Termination

We may suspend or terminate accounts violating these terms.

10. Changes

These Terms may change at any time. Continued use of PayNote means you accept the updated Terms.

11. Contact

For any questions regarding these Terms:

Phone: 7741815877
Email: paynote.dhumal@gmail.com
Website: https://paynote.website

Thank you for using PayNote.
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