import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app_clone/domain/utils.dart';

class UserPostCard extends StatefulWidget {
  String postProfile;
  String postImage;
  int numLikes;
  String userName;
  String subTitle;

  UserPostCard(
      {super.key,
      required this.numLikes,
      required this.subTitle,
      required this.postImage,
      required this.postProfile,
      required this.userName});

  @override
  State<UserPostCard> createState() => _UserPostCardState();
}

class _UserPostCardState extends State<UserPostCard> {
  MediaQueryData? mediaQueryData;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SizedBox(
      height: mediaQueryData!.size.height * 0.75,
      child: Column(
        children: [
          ListTile(
            title: Text(
              widget.userName,
              style: myTextStyle15(fontWeight: FontWeight.bold),
            ),
            leading: ClipOval(
                child: Image.asset(
              widget.postProfile,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            )),
            subtitle: Text(widget.subTitle),
            trailing: const Icon(Icons.more_vert),
          ),
          Image.asset(
            widget.postImage,
            fit: BoxFit.cover,
            height: 500,
            width: double.infinity,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border_rounded,
                        size: 30,
                      )),
                  Image.asset(
                    "assets/icons/chat (2).png",
                    height: 25,
                    width: 25,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Image.asset(
                    "assets/icons/send.png",
                    height: 25,
                    width: 25,
                  ),
                ],
              ),
              const Icon(
                Icons.bookmark_border,
                size: 30,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Text(
                  widget.numLikes.toString(),
                  style: myTextStyle15(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "likes",
                  style: myTextStyle15(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
