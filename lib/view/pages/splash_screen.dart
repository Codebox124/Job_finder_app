import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routes/app_pages.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.black),
                onPressed: () {},
                child: const Text(
                  "Jobspot",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const Spacer(),
            Image.asset('assets/images/splash.png'),
            const Spacer(),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Find Your\nDream Job\nHere!",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Explore all the most exciting job roles basedon your interest and study major.",
                )
              ],
            ),
            const Spacer()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 13, 1, 64),
        onPressed: () =>
            GoRouter.of(context).pushReplacementNamed(AppRoutes.login),
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
