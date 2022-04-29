// ignore_for_file: prefer_const_constructors

import 'dart:html';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class ImageUploader extends StatefulWidget {
  @override
  _ImageUploaderState createState() => _ImageUploaderState();
}

class _ImageUploaderState extends State<ImageUploader> {
  late Uint8List imagevalue = Uint8List(0);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // ignore: prefer_const_constructors
          imagevalue.length == 0
              ? Container(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        child: Icon(
                          Icons.person_add,
                          color: Colors.black12,
                          size: 60.0,
                        ),
                        onTap: () => uploadImage(),
                      ),
                    ],
                  ),
                )
              : ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(
                    image: MemoryImage(imagevalue),
                    width: 100,
                    height: 100,
                  ),
                ),
        ],
      ),
    );
  }

  uploadImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['png', 'jpg', 'svg', 'jpeg']);

    if (result != null) {
      PlatformFile file = result.files.first;

      setState(() {
        imagevalue = file.bytes!;
      });
    } else {
      // User canceled the picker
    }
  }
}
