import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:nursa/authentication/user_model.dart';

class Authentication {
  final _db = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;
  Future<void> signUpUserWithEmailAndPassword(
      String email, String password) async {
    try {
      auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> createUserWithEmailAndPassword(
      String userID, UserModel userModel) async {
    try {
      // Pass the user ID as a field in the document
      await _db.collection("users").doc(userID).set({
        'userName': userModel.userName,
        'uniqueId': userModel.uniqueId,
        'email': userModel.email,
      }).whenComplete(
          () => Get.snackbar("Success", "Account created successfully"));
    } catch (e) {
      Get.snackbar("Failed", "Account not created");
      print(e);
    }
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> addToFirestoreCollection(String text) async {
    try {
      final userId = auth.currentUser!.uid;
      CollectionReference usersCollection =
          FirebaseFirestore.instance.collection('users');

      // Create a reference to the user's document in the 'Users' collection
      DocumentReference userDocRef = usersCollection.doc(userId);

      // Create a reference to the 'comp' subcollection inside the user's document
      CollectionReference compCollection = userDocRef.collection('complaints');

      // Add the data to the 'comp' subcollection
      await compCollection.add({'complaints': text});

      // Show a success message or perform any other actions as needed
      print('Data added to Firestore subcollection successfully');
    } catch (e) {
      // Handle any errors that may occur during the process
      print('Error adding data to Firestore: $e');
    }
  }

  Future<void> addfeedbackToFirestoreCollection(String text) async {
    try {
      final userId = auth.currentUser!.uid;
      CollectionReference usersCollection =
          FirebaseFirestore.instance.collection('users');

      // Create a reference to the user's document in the 'Users' collection
      DocumentReference userDocRef = usersCollection.doc(userId);

      // Create a reference to the 'comp' subcollection inside the user's document
      CollectionReference compCollection = userDocRef.collection('feedbacks');

      // Add the data to the 'comp' subcollection
      await compCollection.add({'feedback': text});

      // Show a success message or perform any other actions as needed
      print('feedback added to Firestore subcollection successfully');
    } catch (e) {
      // Handle any errors that may occur during the process
      print('Error adding data to Firestore: $e');
    }
  }
}
