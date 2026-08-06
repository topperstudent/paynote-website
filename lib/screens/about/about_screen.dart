import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About PayNote"),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: SelectableText(
          '''
About PayNote

PayNote is a digital billing platform designed to help businesses create, manage, and share bills digitally.

Our goal is to simplify everyday billing by allowing shop owners to generate bills quickly and send them directly to customers through WhatsApp.

What PayNote Offers

• Digital Bill Generation
• WhatsApp Bill Sharing
• Customer Management
• Inventory Management
• Business Reports & Analytics
• Wallet-based Billing Credits

Our Mission

To make digital billing simple, fast, and accessible for every business.

Our Vision

To provide an easy-to-use billing solution that helps businesses manage their daily operations more efficiently.

Contact

Phone: 7741815877
Email: paynote.dhumal@gmail.com
Website: https://paynote.website
Instagram: https://www.instagram.com/paynote2026?igsh=MWkyYzRzM2UzMmt4Yw==
Facebook: https://www.facebook.com/PayNote2026
YouTube: https://youtube.com/@paynote-cwc?si=af0X-vteu_XYNP9u
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