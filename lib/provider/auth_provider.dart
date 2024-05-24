import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final _fireAuth = FirebaseAuth.instance;

class MyAuthProvider extends ChangeNotifier {
  final form = GlobalKey<FormState>();

  var isLogin = true;
  var enteredEmail = '';
  var enteredPassword = '';

  void switchAuthMode() {
    isLogin = !isLogin;
    notifyListeners();
  }

  Future<void> submit() async {
    final _isValid = form.currentState!.validate();

    if (!_isValid) {
      return;
    }

    form.currentState!.save();

    // Debug prints to verify email and password values
    print('Email: $enteredEmail');
    print('Password: $enteredPassword');

    try {
      if (isLogin) {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: enteredEmail, password: enteredPassword);
      } else {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: enteredEmail, password: enteredPassword);
      }
    } catch (e) {
      if (e is FirebaseAuthException) {
        if (e.code == 'email-already-in-use') {
          print("Email already in use");
        } else if (e.code == 'user  -not-found') {
          print("No user found for that email.");
        } else if (e.code == 'wrong-password') {
          print("Wrong password provided.");
        } else {
          print("FirebaseAuthException: ${e.message}");
        }
      } else {
        print("An error occurred: $e");
      }
    }

    notifyListeners();
  }
}
