import 'package:flutter/material.dart';

import '../screens/home/home_screen.dart';
import '../screens/privacy_policy/privacy_policy_screen.dart';
import '../screens/terms/terms_conditions_screen.dart';
import '../screens/about/about_screen.dart';
import '../screens/contact/contact_screen.dart';

class AppRoutes {
  static const home = "/";
  static const privacy = "/privacy";
  static const terms = "/terms";
  static const about = "/about";
  static const contact = "/contact";

  static Map<String, WidgetBuilder> routes = {
    home: (context) => const HomeScreen(),
    privacy: (context) => const PrivacyPolicyScreen(),
    terms: (context) => const TermsConditionsScreen(),
    about: (context) => const AboutScreen(),
    contact: (context) => const ContactScreen(),
  };
}