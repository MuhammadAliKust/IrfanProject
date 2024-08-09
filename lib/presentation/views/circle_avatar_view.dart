import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CircleAvatarView extends StatefulWidget {
  CircleAvatarView({super.key});

  @override
  State<CircleAvatarView> createState() => _CircleAvatarViewState();
}

class _CircleAvatarViewState extends State<CircleAvatarView> {
  File? selectedFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circle Avatar View"),
      ),
      body: Center(
        child: selectedFile == null
            ? InkWell(
                onTap: () {
                  getImage();
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/1.jpeg',
                    height: 160,
                    fit: BoxFit.cover,
                    width: 160,
                  ),
                ),
              )
            : ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.file(
                  selectedFile!,
                  height: 160,
                  fit: BoxFit.cover,
                  width: 160,
                ),
              ),
      ),
    );
  }

  getImage() async {
    ImagePicker _imagePicker = ImagePicker();
    _imagePicker.pickImage(source: ImageSource.gallery).then((value) {
      selectedFile = File(value!.path);
      setState(() {});
    });
  }
}
