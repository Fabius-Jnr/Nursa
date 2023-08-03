import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nursa/registration/registration.dart';
import '../container/nurse_container.dart';

class NurseDashboard extends StatefulWidget {
  const NurseDashboard({super.key});

  @override
  State<NurseDashboard> createState() => _NurseDashboardState();
}

class _NurseDashboardState extends State<NurseDashboard> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  String? email;
  String? name;

  @override
  void initState() {
    super.initState();
    fetchUserData();
  }

  Future<void> fetchUserData() async {
    final user = _auth.currentUser;
    if (user != null) {
      final userData = await _firestore.collection('users').doc(user.uid).get();
      setState(() {
        email = user.email;
        name = userData['name'];
      });
    }
  }

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
              backgroundImage: AssetImage("assets/nurse.jpg"),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(name ?? 'User'),
              accountEmail: Text(email ?? 'hello@gmail.com'),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/nurse.jpg'),
                radius: 80,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ListTile(
              title: const Text(
                "About",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),
              leading: const Icon(Icons.question_mark_rounded),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                " Settings",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),
              leading: const Icon(Icons.settings),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                " Help",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),
              leading: const Icon(Icons.info),
              onTap: () {},
            ),
            const SizedBox(
              height: 25,
            ),
            const Divider(),
            ListTile(
              title: const Text(
                "Logout",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),
              leading: const Icon(Icons.logout),
              onTap: () async {
                FirebaseAuth auth = FirebaseAuth.instance;
                try {
                  await auth.signOut();
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Registration()));
                } catch (e) {
                  // Handle any error that may occur during the logout process
                  print('Error during logout: $e');
                }
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Dashboard',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 68, 4, 91)),
                    ),
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
