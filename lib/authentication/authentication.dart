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
      _db.collection("Users").doc(userID).set(userModel.toJson()).whenComplete(
            () => Get.snackbar("Success", "Account created successfully"),
          );
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
}
