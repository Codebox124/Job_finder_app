import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../../routes/app_pages.dart';

class LogoPage extends StatefulWidget {
  const LogoPage({super.key});

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  // Force the app to be displayed in full screen
  hideUIOverlay() => SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: [],
      );

  // Exit Full Screen
  showUIOverlay() => SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: SystemUiOverlay.values,
      );

  // Timer to move away from the logo page
  Future initialize() async => Timer(
        const Duration(seconds: 5),
        () async => GoRouter.of(context).pushReplacementNamed(AppRoutes.splash),
      );

  @override
  void initState() {
    hideUIOverlay();
    initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 13, 1, 64),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            const SizedBox(height: 20),
            const Text(
              'Jobspot',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    showUIOverlay();
    super.dispose();
  }
}
