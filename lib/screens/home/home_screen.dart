import 'package:flutter/material.dart';

import 'widgets/navbar.dart';
import 'widgets/hero_section.dart';
import 'widgets/features_section.dart';
import 'widgets/why_paynote_section.dart';
import 'widgets/faq_section.dart';
import 'widgets/footer_section.dart'; // Contains WebsiteFooter class

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: const MaterialScrollBehavior().copyWith(
          scrollbars: false,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              /// Top Navigation
              Navbar(),

              /// Hero Section
              HeroSection(),

              /// Feature Section
              FeatureSection(),

              /// Why PayNote Section
              WhyPayNoteSection(),

              /// FAQ Section
              FAQSection(),

              /// Website Footer
              WebsiteFooter(),
            ],
          ),
        ),
      ),
    );
  }
}