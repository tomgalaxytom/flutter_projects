import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'dart:io';

Future<File?> editImage(File? pickedFile) async {
  if (pickedFile != null) {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: pickedFile.path,
      compressFormat: ImageCompressFormat.jpg,
      compressQuality: 100,
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Cropper',
        ),
      ],
    );
    if (croppedFile != null) {
     return File(croppedFile.path); // Convert CroppedFile to File
    } else {
      //return;
    }
  }
  return null;
}
// Future<void> EditImg(image) async {
// //EditImg(image) async {
//   final CroppedImg = await ImageCropper().cropImage(
//       sourcePath: image.path,
//       aspectRatioPresets: [
//         CropAspectRatioPreset.square,
//         CropAspectRatioPreset.ratio3x2,
//         CropAspectRatioPreset.original,
//         CropAspectRatioPreset.ratio4x3,
//         CropAspectRatioPreset.ratio16x9
//       ],
//       androidUiSettings: AndroidUiSettings(
//           toolbarTitle: 'Cropper',
//           activeControlsWidgetColor: Colors.greenAccent[400],
//           toolbarColor: Colors.greenAccent[400],
//           toolbarWidgetColor: Colors.white,
//           initAspectRatio: CropAspectRatioPreset.original,
//           lockAspectRatio: false),
//       iosUiSettings: IOSUiSettings(
//         minimumAspectRatio: 1.0,
//       ));
//   if (CroppedImg != null) {
//     image = CroppedImg;
//     return image;
//   } else {
//     return null;
//   }
// }
