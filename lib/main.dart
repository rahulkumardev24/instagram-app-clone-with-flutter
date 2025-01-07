import 'package:flutter/material.dart';
import 'package:instagram_app_clone/screen/bottom_navigation_screen/home_screen.dart';
import 'package:instagram_app_clone/screen/bottom_navigation_screen/profile_screen.dart';
import 'package:instagram_app_clone/screen/bottom_navigation_screen/reels_screen.dart';
import 'package:instagram_app_clone/screen/dashboard/dashboard_screen.dart';
import 'package:instagram_app_clone/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const DashboardScreen());
  }
}

/// IN THIS VIDEO WE CREATE INSTAGRAM APP CLONE
/// ___________________________INSTAGRAM APP CLONE_____________________________________///
/// SIMPLE STEP
/// STEPS
/// Step 1
/// Project Setup = > DONE
///
/// Step 2
/// Splash screen Create = > DONE
///
/// Step 3
/// Custom Text Style  => DONE
///
/// Step 4
/// Dashboard Screen => DONE
///
/// Step 5
/// Home screen => DONE
///
/// Step 6
/// Profile Screen => DONE
///
/// Steps 7
/// Reels Screen => DONE
///
/// step 8
/// Search Screen => DONE
///
///
///
