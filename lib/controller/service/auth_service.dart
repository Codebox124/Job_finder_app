// Create a method to sign up a user
// ignore_for_file: use_build_context_synchronously, unused_local_variable

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routes/app_pages.dart';

class AuthService {
  Future<void> signUp(
      BuildContext context, String email, String password) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      GoRouter.of(context).pushReplacementNamed(AppRoutes.home);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        const SnackBar(
          content: Text('Password weak!'),
        );
      } else if (e.code == 'email-already-in-use') {
        const SnackBar(
          content: Text('Email Already exist!'),
        );
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> signin(
      BuildContext context, String email, String password) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      GoRouter.of(context).pushReplacementNamed(AppRoutes.home);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        const SnackBar(
          content: Text('Email not registered'),
        );
      } else if (e.code == 'wrong-password') {
        const SnackBar(
          content: Text('Wrong password !.'),
        );
      }
    }
  }
}
