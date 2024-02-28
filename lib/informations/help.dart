import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help & Support'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Frequently Asked Questions',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _buildFAQItem(
              question: 'How do I add a new medication?',
              answer:
                  'To add a new medication, go to the Dashboard and click on the "Add medication" button. Fill in the required details such as medication name, dosage, and frequency.',
            ),
            _buildFAQItem(
              question: 'Can I stop an alarm?',
              answer:
                  'Yes, you can stop an alarm by swiping the switch on the reminder card.',
            ),
            _buildFAQItem(
              question: 'How can I set medication reminders?',
              answer:
                  'When adding or editing a medication, you can set a reminder by enabling the "the alarm icon floating action" button in the add medication page. You will receive notifications at the specified time.',
            ),
            const SizedBox(height: 24),
            const Text(
              'Troubleshooting',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildTroubleshootingItem(
              title: 'App Crashes Frequently',
              description:
                  'If the app crashes frequently, try clearing the app cache and restarting your device. If the issue persists, please contact our support team.',
            ),
            _buildTroubleshootingItem(
              title: 'Notification Issues',
              description:
                  'If you are not receiving medication reminders, make sure notifications are enabled for the app in your device settings. Also, check that you have set up reminders correctly within the app.',
            ),
            const SizedBox(height: 24),
            const Text(
              'Contact Us',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'If you need further assistance or have any questions, please feel free to contact our support team:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Text(
              'Email: support@example.com',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFAQItem({required String question, required String answer}) {
    return ExpansionTile(
      title: Text(
        question,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(answer),
        ),
      ],
    );
  }

  Widget _buildTroubleshootingItem(
      {required String title, required String description}) {
    return ListTile(
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(description),
    );
  }
}
