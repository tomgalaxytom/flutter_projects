import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';

Future<void> saveImage(File _image) async {
  Uint8List? imageBytes = await _image.readAsBytes();

  final result = await ImageGallerySaver.saveImage(
    imageBytes,
    //albumName: 'ImageEditor',
  );

  // Ensure that the result is a boolean value
  if (result != null && result['isSuccess'] == true) {
    Fluttertoast.showToast(
      msg: "Image saved in gallery/ImageEditor",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green[400],
      textColor: Colors.white,
      fontSize: 16.0,
    );
  } else {
    Fluttertoast.showToast(
      msg: "Something went wrong. Please try again.",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red[400],
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
