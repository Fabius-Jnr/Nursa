import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Nurse Assistive App',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Version 9.0.0',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(height: 16),
              const Text(
                'This app is designed to assist nurses in reducing medication errors and improving patient care. It provides essential features such as:',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),
              _buildFeature('Medication Reminders'),
              _buildFeature('Dosage Calculations'),
              _buildFeature('Drug Interaction Warnings'),
              const SizedBox(height: 16),
              const Text(
                'Mission:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Our mission is to empower nurses with an easy-to-use mobile app that helps them manage medications safely and efficiently. We aim to improve patient outcomes and reduce medication-related incidents.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Privacy Policy:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Text(
                'We take your privacy seriously. Our app does not collect or store any personal information without your consent. All medication data is stored locally on your device, and we do not share it with any third parties.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Acknowledgments:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Text(
                'We would like to express our gratitude to the following open-source projects and libraries that made this app possible:',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),
              _buildAcknowledgment(
                  'Flutter - Google\'s UI toolkit for building natively compiled applications for mobile, web, and desktop.'),
              _buildAcknowledgment(
                  'Provider - A state management library for Flutter.'),
              _buildAcknowledgment(
                  'Firebase - Google\'s mobile and web application development platform.'),
              _buildAcknowledgment(
                  'Flutter Local Notifications - A plugin to handle local notifications in Flutter.'),
              // Add more acknowledgments as needed
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeature(String feature) {
    return Row(
      children: [
        const Icon(Icons.check, color: Colors.green),
        const SizedBox(width: 8),
        Text(feature, style: const TextStyle(fontSize: 16)),
      ],
    );
  }

  Widget _buildAcknowledgment(String acknowledgment) {
    return Text('• $acknowledgment', style: const TextStyle(fontSize: 16));
  }
}
