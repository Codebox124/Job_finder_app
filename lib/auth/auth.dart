// Create a method to sign up a user
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<void> signUp(BuildContext context, String email, String password) async {
  try { 
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    Navigator.of(context).pushReplacementNamed('/home');
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      SnackBar(
        content: Text('Password weak!'),
      );
    } else if (e.code == 'email-already-in-use') {
      SnackBar(
        content: Text('Email Already exist!'),
      );
    }
  } catch (e) {
    print(e);
  }
}

Future<void> signin(BuildContext context, String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    Navigator.of(context).pushReplacementNamed('/home');
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      SnackBar(
      

        content: Text('Email not registered'),
      );
    } else if (e.code == 'wrong-password') {
      SnackBar(
        content: Text('Wrong password !.'),
      );
    }
  }
}

