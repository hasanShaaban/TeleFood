import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:telefood/core/providers/signup_info_provider.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/utils/user_token.dart';

class PhotoProfileWidget extends StatefulWidget {
  const PhotoProfileWidget({
    super.key,
  });

  @override
  State<PhotoProfileWidget> createState() => _PhotoProfileWidgetState();
}

class _PhotoProfileWidgetState extends State<PhotoProfileWidget> {
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImageFromGallery() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      // Get the app's documents directory
      final Directory appDir = await getApplicationDocumentsDirectory();

      // Create a folder named 'images' if it doesn't exist
      final Directory imagesDir = Directory('${appDir.path}/images');
      if (!await imagesDir.exists()) {
        await imagesDir.create(recursive: true);
      }

      // Create a new file path for the image in the 'images' folder
      final String fileName =
          pickedFile.name; // Preserve the original file name
      final File newImage = File('${imagesDir.path}/$fileName');
      userImage = newImage.path;

      // Copy the picked image to the new path
      await File(pickedFile.path).copy(newImage.path);

      // Update the UI with the saved image
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 160,
          height: 160,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: kWhiteColor,
              width: 3,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.all(10),
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: kWhiteColor,
                width: 3,
              ),
            ),
            child: Center(
              child: _selectedImage != null
                  ? CircleAvatar(
                      radius: 70, backgroundImage: FileImage(_selectedImage!))
                  : Text(
                      'upload your\n profile image',
                      style: kMvBoli18.copyWith(
                          height: 1.5, color: kWhiteColor, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
            ),
          ),
        ),
        Positioned(
            top: 100,
            left: 120,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topCenter,
                      colors: [kSecondaryColor, kTextColor])),
              child: IconButton(
                onPressed: () async {
                  await pickImageFromGallery();
                  Provider.of<SignupInfoProvider>(context, listen: false)
                      .setImage(newImage: _selectedImage);
                },
                icon: const Icon(
                  Icons.add,
                  color: kWhiteColor,
                ),
              ),
            ))
      ],
    );
  }
}
