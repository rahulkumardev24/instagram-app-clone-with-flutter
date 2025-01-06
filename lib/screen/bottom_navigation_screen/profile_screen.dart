import 'package:flutter/material.dart';
import 'package:instagram_app_clone/domain/utils.dart';
import 'package:instagram_app_clone/screen/tabs/post_screen.dart';
import 'package:instagram_app_clone/widgets/story_show_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  MediaQueryData? mqData;
  List<String> post = [
    "assets/images/u10.jpg",
    "assets/images/u9.jpg",
    "assets/images/u8.jpg",
    "assets/images/u7.jpg",
    "assets/images/u6.jpg",
    "assets/images/u5.jpg",
    "assets/images/u4.jpg",
    "assets/images/u3.jpg",
    "assets/images/u2.jpg",
    "assets/images/u1.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    mqData = MediaQuery.of(context);
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "priya_sharma",
              style: myTextStyle18(fontWeight: FontWeight.bold),
            ),
            actions: const [
              Icon(
                Icons.alternate_email,
                size: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 16,
              ),
              Icon(Icons.add_circle_outline_rounded,
                  size: 30, color: Colors.black),
              SizedBox(
                width: 16,
              ),
              Icon(Icons.menu, size: 30, color: Colors.black),
              SizedBox(
                width: 12,
              ),
            ],
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// user add story profile show
                    Stack(children: [
                      /// image
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 3, color: Colors.black12),
                            image: const DecorationImage(
                                image: AssetImage(
                                  "assets/images/uu.jpg",
                                ),
                                fit: BoxFit.cover)),
                      ),

                      /// add icon
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.white),
                              borderRadius: BorderRadius.circular(100)),
                          child: ClipOval(
                            child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 28,
                                )),
                          ),
                        ),
                      ),
                    ]),

                    Column(
                      children: [
                        Text(
                          "198",
                          style: myTextStyle22(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "posts",
                          style: myTextStyle15(),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "20k",
                          style: myTextStyle22(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "followers",
                          style: myTextStyle15(),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "112",
                          style: myTextStyle22(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "following",
                          style: myTextStyle15(),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 34.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Priya",
                      style: myTextStyle18(),
                    ),
                  ],
                ),
              ),

              /// bio Text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "👑 Confidently walking through life like I own the runway. I believe in good vibes, strong coffee, and classy comebacks. Here to remind you that every girl is a queen in her own way. Life is too short to settle for anything less than extraordinary. 💄",
                  style: myTextStyle15(),
                ),
              ),

              /// Professional Dashboard
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: mqData!.size.width,
                  height: mqData!.size.height * 0.1,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Professional dashboard",
                          style: myTextStyle15(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "70k views in the last 30 days.",
                          style: myTextStyle15(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              /// Edit and share button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: Colors.white38,
                            ),
                            child: Text(
                              "Edit profile",
                              style: myTextStyle15(fontWeight: FontWeight.bold),
                            ))),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: Colors.white38,
                            ),
                            child: Text(
                              "Share profile",
                              style: myTextStyle15(fontWeight: FontWeight.bold),
                            ))),
                  ],
                ),
              ),

              /// Hight light Story Show
              /// here we call story Show Card
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    StoryShowCard(
                        image: "assets/images/u1.jpg", userName: "Alone"),
                    StoryShowCard(
                        image: "assets/images/u2.jpg", userName: "Party"),
                    StoryShowCard(
                        image: "assets/images/u3.jpg", userName: "Family"),
                    StoryShowCard(
                        image: "assets/images/u4.jpg", userName: "Heart"),
                    StoryShowCard(
                        image: "assets/images/u1.jpg", userName: "Alone"),
                    StoryShowCard(
                        image: "assets/images/u2.jpg", userName: "Party"),
                    StoryShowCard(
                        image: "assets/images/u3.jpg", userName: "Family"),
                    StoryShowCard(
                        image: "assets/images/u4.jpg", userName: "Heart")
                  ],
                ),
              ),

              /// here we show three tab just like instagram
              /// post , reals , and pin
              const TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.grid_on_rounded),
                ),
                Tab(
                  icon: Icon(Icons.ondemand_video_rounded),
                ),
                Tab(
                  icon: Icon(Icons.person_pin_outlined),
                ),
              ]),
              Expanded(
                child: TabBarView(children: [
                  GridView.builder(
                    itemCount: post.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 4,
                            crossAxisSpacing: 4),
                    itemBuilder: (context, index) {
                      return SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.asset(
                            post[index],
                            fit: BoxFit.cover,
                          ));
                    },
                  ),
                ]),
              )
            ],
          ),
        ));
  }
}

/// This is my Profile Screen
