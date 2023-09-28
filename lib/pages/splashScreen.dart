import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 13, 1, 64),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/login');
          }, child: Icon(Icons.arrow_forward)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.black),
                onPressed: () {},
                child: Text(
                  "Jobspot",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
           Spacer(),
            Image.asset('assets/images/splash.png'),
          Spacer(),
            Column(
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
                  "Explore all the most exciting job roles based on your interest and study major.",
                )
              ],
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
