import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nursa/accessories/accessories.dart';
import 'package:nursa/others/puzzles.dart';
import 'package:nursa/sendables/complaints.dart';
import 'package:nursa/sendables/feedbacks.dart';
import '../wards/emer_ward.dart';
import '../wards/kids_ward.dart';

class NurseContainer extends StatelessWidget {
  const NurseContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Kids ward
            Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 175, 146, 244),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const KidsWard(),
                      ),
                    );
                  },
                  child: const Text(
                    'KIDS\nWARD',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  )),
            ),

            // emmergency ward
            Container(
              height: 130,
              width: 130,
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
                  child: const Text(
                    'EMER.\nWARD',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  )),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          'Accessories',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 68, 4, 91),
          ),
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 20),
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
                  onPressed: () {
                    Get.to(() => const FetchingComplaints());
                  },
                  child: const Text(
                    'Send\nComplaint',
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
              width: 130,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 175, 146, 244),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Get.to(() => const FeedbackPage());
                },
                child: const Text(
                  'Send\nFeedback',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Resources
            Container(
              height: 130,
              width: 150,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 175, 146, 244),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                  onPressed: () {
                    Get.to(() => const NurseEthicsPage());
                  },
                  child: const Text(
                    'Resources',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  )),
            ),

            // Others
            Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 175, 146, 244),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Get.to(() => const MedicalPuzzlesPage());
                },
                child: const Text(
                  'Puzzles',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
