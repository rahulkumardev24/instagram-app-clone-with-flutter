import 'package:flutter/material.dart';
import 'package:instagram_app_clone/domain/utils.dart';
import 'package:instagram_app_clone/widgets/story_show_card.dart';
import 'package:instagram_app_clone/widgets/user_post_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MediaQueryData? mqData;
  @override
  Widget build(BuildContext context) {
    mqData = MediaQuery.of(context);

    return Scaffold(
      /// Here we apply MediaQuery
      ///______________________APPBAR______________________///
      appBar: AppBar(
        title: Text(
          "Instagram",
          style: myTextStyle28(
              fontFamily: "secondary", fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border_rounded,
                size: 30,
                color: Colors.black,
              )),
          const SizedBox(
            width: 16,
          ),
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/icons/messenger.png",
                height: 30,
                width: 30,
              )),
          const SizedBox(
            width: 10,
          )
        ],
      ),

      ///_________________________BODY_______________________///
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: mqData!.size.width * 0.34,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      /// ______________YOUR STORY____________///
                      /// here we create add store card
                      Column(
                        children: [
                          Stack(children: [
                            /// image
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
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
                                    border: Border.all(
                                        width: 2, color: Colors.white),
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
                            )
                          ]),
                          Text(
                            "Your Story",
                            style: myTextStyle15(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),

                      /// here we show story card , all user story
                      /// create a custom card for this
                      /// Here we call story card
                      /// data change all user , name and image
                      StoryShowCard(
                        userName: "priya_queen",
                        image: "assets/images/pexels-dhanno-18885581.jpg",
                      ),
                      StoryShowCard(
                        userName: "cuity",
                        image: "assets/images/pexels-koolshooters-7143204.jpg",
                      ),
                      StoryShowCard(
                        userName: "sonam_sweet",
                        image: "assets/images/pexels-shiny-diamond-3762663.jpg",
                      ),
                      StoryShowCard(
                        userName: "baby_kids",
                        image: "assets/images/pexels-pixabay-36029.jpg",
                      ),
                      StoryShowCard(
                        userName: "_love_jack",
                        image:
                            "assets/images/pexels-mahdi-chaghari-9996334-10222837.jpg",
                      ),
                      StoryShowCard(
                        userName: "party_page",
                        image: "assets/images/pexels-cottonbro-3171770.jpg",
                      ),
                    ],
                  ),
                ),
              ),
            ),

            /// Suggested
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Suggested for you",
                    style: myTextStyle18(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Older posts",
                    style: myTextStyle15(fontColor: Colors.blueAccent),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            /// ________________USER POST__________________///
            /// Here we show user post
            /// crete custom button
            /// here we call user post card
            /// Data
            UserPostCard(
              numLikes: 1234,
              subTitle: 'mile ho tum hum ko',
              postImage: 'assets/images/uu1.jpg',
              postProfile: 'assets/images/uu1.jpg',
              userName: 'priya_sharam',
            ),
            UserPostCard(
              numLikes: 1234,
              subTitle: 'mile ho tum hum ko',
              postImage: 'assets/images/pexels-achraf210-3383361.jpg',
              postProfile: 'assets/images/pexels-achraf210-3383361.jpg',
              userName: 'instantbollywood',
            ),
            UserPostCard(
              numLikes: 1234,
              subTitle: 'mile ho tum hum ko',
              postImage: 'assets/images/pexels-aldiq-2919625.jpg',
              postProfile: 'assets/images/pexels-aldiq-2919625.jpg',
              userName: 'nature_photography',
            ),
            UserPostCard(
              numLikes: 700,
              subTitle: 'Aaj ki rat maza',
              postImage: 'assets/images/pexels-andersonguerra-1146505.jpg',
              postProfile: 'assets/images/pexels-andersonguerra-1146505.jpg',
              userName: 'ragani',
            ),
            UserPostCard(
              numLikes: 1234,
              subTitle: 'nature song',
              postImage: 'assets/images/pexels-bertellifotografia-1789427.jpg',
              postProfile:
                  'assets/images/pexels-bertellifotografia-1789427.jpg',
              userName: 'world_wide',
            ),
            UserPostCard(
              numLikes: 400,
              subTitle: 'nature song',
              postImage:
                  'assets/images/pexels-jill-wellington-1638660-3334355.jpg',
              postProfile:
                  'assets/images/pexels-jill-wellington-1638660-3334355.jpg',
              userName: "memes_mam's",
            ),
            UserPostCard(
              numLikes: 1516,
              subTitle: 'Tik_tak_toe',
              postImage:
                  'assets/images/pexels-jimmy-elizarraras-613804445-29939988.jpg',
              postProfile:
                  'assets/images/pexels-jimmy-elizarraras-613804445-29939988.jpg',
              userName: "girls'_page",
            ),
            UserPostCard(
              numLikes: 1516,
              subTitle: 'Tik_tak_toe',
              postImage: 'assets/images/pexels-mastercowley-1300520.jpg',
              postProfile:
                  'assets/images/pexels-jimmy-elizarraras-613804445-29939988.jpg',
              userName: "girls'_page",
            ),
          ],
        ),
      ),
    );
  }
}

/// THIS IS MY HOME SCREEN
/// _____________HOME SCREEN___________________///
/// Flow Step
/// Steps
/// steps 1
/// add story card => DONE
///
/// Step 2
/// Story show card => done
///
/// Step 3
/// user post show
/// create custom card to show user post => DONE
///
/// complete => DONE
///
///
///
