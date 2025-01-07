import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
    "assets/images/u1.jpg",
    "assets/images/u10.jpg",
    "assets/images/u9.jpg",
    "assets/images/u8.jpg",
    "assets/images/u7.jpg",
    "assets/images/u6.jpg",
    "assets/images/u5.jpg",
    "assets/images/u4.jpg",
    "assets/images/u3.jpg",
    "assets/images/u2.jpg",
    "assets/images/u10.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),

          /// search Box
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black12,
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      filled: false,
                      prefixIcon: Icon(Icons.search_rounded),
                      fillColor: Colors.black12,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      )),
                ),
              ),
            ),
          ),

          /// Grid view
          Expanded(
            child: GridView.builder(
              itemCount: post.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 4, crossAxisSpacing: 4),
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 100,
                  width: 100,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(post[index]),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                          right: 0,
                          top: 10,
                          child: Image.asset(
                            "assets/icons/video (1).png",
                            height: 30,
                            width: 30,
                          ))
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

/// search screen DONE
