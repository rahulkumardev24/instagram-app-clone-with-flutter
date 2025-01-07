import 'package:flutter/material.dart';
import 'package:instagram_app_clone/widgets/reels_card.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({super.key});

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,

      /// In This screen we show reels video
      // create Reels Card
      // here we call reels card
      body: ReelsCard(),
    ) ;
  }
}

/// THIS IS MY REELS SCREEN
///
