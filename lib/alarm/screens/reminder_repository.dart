import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nursa/wards/reminder_model.dart';

Future<List<ReminderModel>> fetchRemindersFromFirestore() async {
  final FirebaseAuth auth = FirebaseAuth.instance;
  var user = auth.currentUser!;
  var userID = user.uid;

  try {
    final QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('Reminders')
        .get();

    List<ReminderModel> reminders = querySnapshot.docs.map((documentSnapshot) {
      // Cast the data to Map<String, dynamic> and handle null case with null-aware operator ??
      final Map<String, dynamic>? data =
          documentSnapshot.data() as Map<String, dynamic>?;

      // Return ReminderModel.fromJson with data or an empty map if data is null
      return ReminderModel.fromJson(data ?? {});
    }).toList();

    return reminders;
  } catch (e) {
    print("Error fetching reminders: $e");
    return []; // Return an empty list if there's an error.
  }
}
