import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_stacked_app2/app/app.locator.dart';
import 'package:my_stacked_app2/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class AuthService {
  final _navigationService = locator<NavigationService>();
  // Create a new user with email and password
  Future createUserWithEmailAndPassword({
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) {
        FirebaseFirestore.instance.collection("Users").doc().set({
          "firstName": firstName,
          "lastName": lastName,
          "email": email,
          "phoneNumber": phoneNumber,
        });
      }).then((value) {
        Fluttertoast.showToast(msg: "Account Created Succesfully");
      }).then((value) {
        _navigationService.navigateToHomeView();
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Fluttertoast.showToast(msg: "The password provided is too weak.");
      } else if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(
            msg: "The account already exists for that email.");
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "An error occured");
    }
  }

  // Sign in with email and password
  Future signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((value) {
        Fluttertoast.showToast(msg: "Login Succesful");
      }).then((value) {
        _navigationService.navigateToHomeView();
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Fluttertoast.showToast(msg: "No user found for that email.");
      } else if (e.code == 'wrong-password') {
        Fluttertoast.showToast(msg: "Wrong password provided for that user.");
      } else if (e.code == 'invalid-email') {
        Fluttertoast.showToast(msg: "Invalid email");
      } else if (e.code == "invalid-credential") {
        Fluttertoast.showToast(msg: "Invalid credentials");
      } else {
        Fluttertoast.showToast(msg: e.toString());
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "An error occured");
    }
  }

  // Sign out
  Future signOut() async {
    await FirebaseAuth.instance.signOut().then((value) {
      _navigationService.navigateToLoginView();
    });
  }

  // Reset Password
  Future resetPassword({required String email}) async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: email)
          .then((value) {
        Fluttertoast.showToast(msg: "Password reset link sent to your email");
      }).then((value) => _navigationService.navigateToLoginView());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Fluttertoast.showToast(msg: "No user found for that email.");
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "An error occured");
    }
  }

  // check auth state changes
  Stream<User?> get authStateChanges =>
      FirebaseAuth.instance.authStateChanges();
}
