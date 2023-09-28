import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
                Text(
                  "Hello\nOrlando Diggs",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                CircleAvatar(
                  child: Image.asset("assets/images/Mask group.png"),
                )
              ],
            ),
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () async {
                // Sign the user out using FirebaseAuth
                await FirebaseAuth.instance.signOut();
                // Navigate back to the login page or another desired page
                Navigator.of(context).pushReplacementNamed('/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
