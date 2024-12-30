import 'package:flutter/material.dart';
import 'package:instagram_app_clone/domain/utils.dart';

class StoryShowCard extends StatefulWidget {
  String userName;
  String image;

  StoryShowCard({super.key, required this.image, required this.userName});

  @override
  State<StoryShowCard> createState() => _StoryShowCardState();
}

class _StoryShowCardState extends State<StoryShowCard> {
  /// here we create constructor

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
                children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: const LinearGradient(colors: [
                  Colors.purple,
                  Colors.red,
                  Colors.orange,
                  Colors.yellow,
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),

                /// here we show gradient color
                border: Border.all(width: 3, color: Colors.red),
                image:  DecorationImage(
                    image: AssetImage(
                      widget.image,
                    ),
                    fit: BoxFit.cover)),
          ),
          Text(
            widget.userName,
            style: myTextStyle15(fontWeight: FontWeight.bold),
          )
                ],
              ),
        ));
  }
}
