import 'package:flutter/material.dart';
import 'package:instagram_app_clone/screen/bottom_navigation_screen/home_screen.dart';
import 'package:instagram_app_clone/screen/bottom_navigation_screen/post_add_screen.dart';
import 'package:instagram_app_clone/screen/bottom_navigation_screen/profile_screen.dart';
import 'package:instagram_app_clone/screen/bottom_navigation_screen/reels_screen.dart';
import 'package:instagram_app_clone/screen/bottom_navigation_screen/search_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  /// here we create list of screen
  /// list of screen call here
  List screen = [
    const HomeScreen(),
    const SearchScreen(),
    const PostAddScreen(),
    const ReelsScreen(),
    const ProfileScreen()
  ];

  int currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentScreen,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          iconSize: 28,
          selectedFontSize: 30,
          onTap: (value) {
            currentScreen = value;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded), label: ""),
          ]),
      body: screen[currentScreen],
    );
  }
}

/// DASHBOARD SCREEN => DONE
