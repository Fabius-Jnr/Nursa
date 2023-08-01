import 'package:flutter/material.dart';
import '../registration/registration.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 175, 146, 244),
              Color.fromARGB(255, 115, 104, 202),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 100),
                child: Column(
                  children: [
                    Image.asset('assets/Nurse 1.jpg'),
                    const SizedBox(height: 30),
                    const Text(
                      'Welcome to NURSA',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Let\'s get Started',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Schyler',
                          color: Colors.white),
                    ),
                    const SizedBox(height: 70),

                    // Button
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Registration()),
                          );
                        },
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          overlayColor: MaterialStateProperty.all(
                              Colors.white.withOpacity(0.2)),
                        ),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
