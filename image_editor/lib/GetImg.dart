import 'package:image_picker/image_picker.dart';
import 'dart:io';

GetiImg(image) async {
  var pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
  if (pickedFile != null) {
    image = File(pickedFile.path);
    return image;
  } else {
    return null;
  }
}
