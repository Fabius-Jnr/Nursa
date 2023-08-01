import 'package:flutter/material.dart';
import 'package:nursa/authentication/authentication.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final TextEditingController feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Feedback Page"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 90),
            TextField(
              controller: feedbackController,
              decoration: const InputDecoration(
                labelText: 'Enter your feedback',
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 50, horizontal: 10),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await Authentication()
                    .addfeedbackToFirestoreCollection(feedbackController.text);
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Feedback submitted"),
                      content: const Text("Thank you for your feedback!"),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            feedbackController.clear();
                            Navigator.of(context).pop();
                          },
                          child: const Text("OK"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Send'),
            ),
          ],
        ),
      ),
    );
  }
}
