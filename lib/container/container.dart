import 'package:flutter/material.dart';
import 'package:nursa/wards/emer_ward.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Kids ward
            DashboardCard(
              label: 'KIDS\nWARD',
            ),

            // emmergency ward
            DashboardCard(
              label: 'EMER.\nWARD',
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Complaints
            Container(
              height: 130,
              width: 150,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 175, 146, 244),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See\nComplaint',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  )),
            ),

            // Feedbacks
            Container(
              height: 130,
              width: 150,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 175, 146, 244),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See\nFeedback',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  )),
            ),
          ],
        ),
      ],
    );
  }
}

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    super.key,
    required this.label,
  });
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 150,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 175, 146, 244),
          borderRadius: BorderRadius.circular(20)),
      child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const EmergencyWard(),
              ),
            );
          },
          child: Text(
            label,
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          )),
    );
  }
}
