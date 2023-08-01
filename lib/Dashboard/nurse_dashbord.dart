import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nursa/welcome_screen/welcome_screen.dart';
import '../container/nurse_container.dart';

class NurseDashboard extends StatefulWidget {
  const NurseDashboard({super.key});

  @override
  State<NurseDashboard> createState() => _NurseDashboardState();
}

class _NurseDashboardState extends State<NurseDashboard> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 222, 220),
      appBar: AppBar(
        iconTheme:
            const IconThemeData(color: Color.fromARGB(255, 175, 146, 244)),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 15),
            height: 20,
            width: 60,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/image1.png"),
            ),
          )
        ],
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Dashboard',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 68, 4, 91)),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 20),
                          child: InkWell(
                            onTap: () {
                              auth.signOut();
                              Get.to(() => const WelcomeScreen());
                            },
                            child: const Text(
                              "Logout",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Image.asset("assets/nurse.jpg")),
                    const Text(
                      'Choose Ward',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 68, 4, 91)),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 10),
                    const NurseContainer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
