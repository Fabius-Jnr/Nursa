// Function to fetch reminders from Firestore
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nursa/wards/reminder_model.dart';

Future<List<ReminderModel>> fetchRemindersFromFirestore() async {
  const userID = 'YOUR_USER_ID'; // Replace this with the actual userID.

  try {
    final querySnapshot = await FirebaseFirestore.instance
        .collection('Users')
        .doc(userID)
        .collection('Reminders')
        .get();

    final List<ReminderModel> reminders = [];
    for (var doc in querySnapshot.docs) {
      reminders.add(ReminderModel.fromJson(doc.data()));
    }

    return reminders;
  } catch (e) {
    print('Error fetching reminders: $e');
    return [];
  }
}
