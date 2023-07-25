import 'package:flutter/material.dart';
import '../container/nurse_container.dart';

class NurseDashboard extends StatefulWidget {
  const NurseDashboard({super.key});

  @override
  State<NurseDashboard> createState() => _NurseDashboardState();
}

class _NurseDashboardState extends State<NurseDashboard> {
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
              child: const Center(
                child: Column(
                  children: [
                    Text(
                      'Dashboard',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 68, 4, 91)),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Choose Ward',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 68, 4, 91)),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 10),
                    NurseContainer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      //   backgroundColor: Color.fromARGB(255, 175, 146, 244),
      // ),
    );
  }
}
