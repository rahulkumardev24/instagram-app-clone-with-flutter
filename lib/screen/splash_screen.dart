import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_app_clone/screen/dashboard/dashboard_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const DashboardScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 250,
            ),
            Image.asset(
              "assets/icons/instagram (1).png",
              height: 100,
            ),
            const Spacer(),
            const Text(
              'from',
              style: TextStyle(fontSize: 20, color: Colors.black54),
            ),
            SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons/meta.png",
                    height: 50,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Meta",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

/// this is my splash screen
/// UI COMPLETE
/// After splash screen Navigate to Dashboard screen
/// SPLASH SCREEN COMPLETE DONE
