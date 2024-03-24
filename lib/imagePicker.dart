import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({Key? key}) : super(key: key);

  @override
  _ImagePickerState createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePickerScreen> {
  XFile? imageData;
  List<String> genderList = ["male", "female", "other", ""];
  var _currencies = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
      ),
      body: Column(children: [
        TextButton(
            onPressed: () {
              showTheImagePickerOption();
            },
            child: Text("Select Image")),
        if (imageData != null) Image.file(File(imageData!.path)),
        DropdownButtonFormField(
          value: selectedValue,
          hint: Text("Please Select Any"),
          items: _currencies
              .map((e) => DropdownMenuItem(
                    child: Row(  
                      children: [
                        Icon(Icons.email),
                        Text(e),
                      ],
                    ),
                    value: e,
                  ))
              .toList(),
          onChanged: (value) {
            setState(() {
              selectedValue = value;
            });
          },
        )
      ]),
    );
  }

  showTheImagePickerOption() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Select Image Source"),
          actions: [
            TextButton(
                onPressed: () {
                  takeThePicture(ImageSource.camera);
                },
                child: Text("Camera")),
            TextButton(
                onPressed: () {
                  takeThePicture(ImageSource.gallery);
                },
                child: Text("Gallery"))
          ],
        );
      },
    );
  }

  takeThePicture(ImageSource source) async {
    Navigator.pop(context);
    final ImagePicker picker = ImagePicker();
// Pick an image.
    final XFile? image = await picker.pickImage(source: source);
    setState(() {
      imageData = image;
    });
  }
}

/*

Camera
Gallery

 */