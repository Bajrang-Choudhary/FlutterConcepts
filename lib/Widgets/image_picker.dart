// You can pick multiple images and videos from gallary or anywhere else.
// If you want to know more about this package, you can simply go to PUB.DEV and search for the "ImagePicker".
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  // we use XFile bcoz its a cross platform.
  XFile? file;
  ImagePicker _picker = ImagePicker();
  List<XFile>? files;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.grey,
              child: Center(
                child: file == null
                    ? Text('Image not picked')
                    : Image.file(
                        File(file!.path),
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                //sync: Sync is single-thread, so only one operation or program will run at a time.
                //async: Async is non-blocking, which means it will send multiple requests to a server.
                // in simple terms async fun take more time
                final XFile? photo =
                    await _picker.pickImage(source: ImageSource.gallery);
                setState(() {
                  file = photo;
                });
                print('Image Picked');
                print(photo!.path);
              },
              child: const Text('Pick Image'),
            ),
            ElevatedButton(
              onPressed: () async {
                //sync: Sync is single-thread, so only one operation or program will run at a time.
                //async: Async is non-blocking, which means it will send multiple requests to a server.
                // in simple terms async fun take more time
                final List<XFile> photos = await _picker.pickMultiImage();
                setState(() {
                  files = photos; 
                });
                print('Images Picked');
                for(int i = 0; i<files!.length; i++){
                  print(files![i].path);
                }
              },
              child: const Text('Pick Images'),
            ),
          ],
        ),
      ),
    );
  }
}
