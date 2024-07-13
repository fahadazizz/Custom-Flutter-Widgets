import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePicker1 extends StatefulWidget {
  const ImagePicker1({super.key});

  @override
  State<ImagePicker1> createState() => _ImagePicker1State();
}

class _ImagePicker1State extends State<ImagePicker1> {
  @override
  File? _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedImage = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      } else {
        print("welcome");
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("image picker"),
      ),
      body: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            child: _image == null ? Text("") : Image.file(_image!),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getImage();
        },
        child: Icon(Icons.image),
      ),
    );
  }
}
