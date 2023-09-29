import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:roadside_assistant_app_ui/view/pages/home_screen.dart';

enum Menus { home, subjects, chats, notification, profile }

final pages = [
  HomePage(),
  Center(
    child: Text(
      "course",
      style: TextStyle(color: Colors.black, fontSize: 40),
    ),
  ),
  Center(
    child: Text(
      "Chat",
      style: TextStyle(color: Colors.black, fontSize: 40),
    ),
  ),
  Center(
    child: Text(
      "Notification",
      style: TextStyle(color: Colors.black, fontSize: 40),
    ),
  ),
  Center(
    child: Text(
      "profile",
      style: TextStyle(color: Colors.black, fontSize: 40),
    ),
  )
];

class BottomBar extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTap;
  const BottomBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                ),
              ),
                Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                ),
              ),
                Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
