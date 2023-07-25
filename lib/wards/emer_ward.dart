import 'package:flutter/material.dart';

class EmergencyWard extends StatefulWidget {
  const EmergencyWard({super.key});

  @override
  State<EmergencyWard> createState() => _EmergencyWardState();
}

class _EmergencyWardState extends State<EmergencyWard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Center(
            child: Column(
              children: [
                Text(
                  'WELCOME TO\nEMER. WARD',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 175, 146, 244)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 200),
                Icon(Icons.medication),
                Text(
                  'No medication\nadded',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Color.fromARGB(255, 175, 146, 244)),
    );
  }
}
