import 'package:flutter/material.dart';
import 'package:paynote_website/screens/home/widgets/footer_section.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Contact Us",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Need Help?",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "We're happy to help you with any questions regarding PayNote.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 40),
            const Card(
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text("Phone / WhatsApp"),
                subtitle: Text("7741815877"),
              ),
            ),
            const SizedBox(height: 15),
            const Card(
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                subtitle: Text("paynote.dhumal@gmail.com"),
              ),
            ),
            const SizedBox(height: 15),
            const Card(
              child: ListTile(
                leading: Icon(Icons.language),
                title: Text("Website"),
                subtitle: Text("https://paynote.website"),
              ),
            ),
            const SizedBox(height: 15),
            const Card(
              child: ListTile(
                leading: Icon(Icons.location_on),
                title: Text("Country"),
                subtitle: Text("India"),
              ),
            ),
            const SizedBox(height: 60),
            const WebsiteFooter(),
          ],
        ),
      ),
    );
  }
}