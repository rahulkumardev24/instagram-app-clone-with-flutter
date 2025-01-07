import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_app_clone/domain/utils.dart';

class PostAddScreen extends StatefulWidget {
  const PostAddScreen({super.key});

  @override
  State<PostAddScreen> createState() => _PostAddScreenState();
}

class _PostAddScreenState extends State<PostAddScreen> {
  ImagePicker imagePicker = ImagePicker();
  XFile? selectedImage;
  @override
  void initState() {
    super.initState();
    openImage();
  }

  /// create function
  Future<void> openImage() async {
    final image = await imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        selectedImage = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "New post",
          style: myTextStyle22(
              fontWeight: FontWeight.bold, fontColor: Colors.white),
        ),
        backgroundColor: Colors.black87,
        leading: const Icon(
          Icons.close_rounded,
          size: 50,
          color: Colors.white,
        ),
        actions: [
          Text(
            "Next",
            style: myTextStyle18(
                fontWeight: FontWeight.bold,
                fontColor: Colors.blueAccent.shade700),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: selectedImage != null
                  ? SizedBox(
                      width: double.infinity,
                      child: Image.file(
                        File(selectedImage!.path),
                        fit: BoxFit.cover,
                      ))
                  : Image.asset("assets/images/uu.jpg")),
          Expanded(child: Container())
        ],
      ),
    );
  }
}

/// This is my Post Add screen
/// flow steps
/// add image picker dependency
/// add screen Complete => DONE
