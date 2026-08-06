import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../core/routes.dart';
import '../../../core/app_theme.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 18,
      ),
      child: Row(
        children: [
          /// Logo
          Image.asset(
            AppConstants.logo,
            height: 45,
          ),
          const SizedBox(width: 12),
          Text(
            AppConstants.appName,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppTheme.primary,
            ),
          ),
          const Spacer(),
          const _NavButton(
            title: "Home",
            route: AppRoutes.home,
          ),
          const SizedBox(width: 25),
          const _NavButton(
            title: "About",
            route: AppRoutes.about,
          ),
          const SizedBox(width: 25),
          const _NavButton(
            title: "Privacy",
            route: AppRoutes.privacy,
          ),
          const SizedBox(width: 25),
          const _NavButton(
            title: "Terms",
            route: AppRoutes.terms,
          ),
          const SizedBox(width: 25),
          const _NavButton(
            title: "Contact",
            route: AppRoutes.contact,
          ),
          const SizedBox(width: 35),
          ElevatedButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 12,
              ),
              child: Text(
                "Coming Soon",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NavButton extends StatefulWidget {
  final String title;
  final String route;

  const _NavButton({
    required this.title,
    required this.route,
  });

  @override
  State<_NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<_NavButton> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          hover = true;
        });
      },
      onExit: (_) {
        setState(() {
          hover = false;
        });
      },
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, widget.route);
        },
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 180),
          style: TextStyle(
            color: hover
                ? AppTheme.primary
                : Colors.black87,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
          child: Text(widget.title),
        ),
      ),
    );
  }
}