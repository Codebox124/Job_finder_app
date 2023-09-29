// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';

import 'package:roadside_assistant_app_ui/view/components/bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Menus currentIndex = Menus.home;
    return Scaffold(
      body: pages[currentIndex.index],
      bottomNavigationBar: BottomBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
