import 'package:flutter/material.dart';

class Complaints extends StatelessWidget {
  Complaints({super.key});

  final TextEditingController complaints = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Center(
            child: Column(
              children: [
                const Text(
                  "Send Complaints",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  controller: complaints,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
