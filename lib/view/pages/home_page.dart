import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:roadside_assistant_app_ui/routes/app_pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Hello\nOrlando Diggs",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                CircleAvatar(
                  child: Image.asset("assets/images/Mask group.png"),
                )
              ],
            ),
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () async {
                // Sign the user out using FirebaseAuth
                await FirebaseAuth.instance.signOut();
                // Navigate back to the login page or another desired page
                context.go(AppRoutes.login);
              },
            ),
          ],
        ),
      ),
    );
  }
}
