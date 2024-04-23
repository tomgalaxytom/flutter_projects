// import 'package:photofilters/photofilters.dart';
// import 'package:flutter/material.dart';
// import 'package:path/path.dart';
// import 'package:image/image.dart' as imageLib;
// import 'dart:async';
// import 'dart:io';
// import 'dart:typed_data';


// Future<Image?> applyFilters(BuildContext context, File imageFile) async {
//   String fileName = basename(imageFile.path);
  
//   // Decode image
//   imageLib.Image? image = imageLib.decodeImage(await imageFile.readAsBytes());

//   // Resize image
//   image = imageLib.copyResize(image!, width: 600);
  
//   Map imageFileMap = await Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => PhotoFilterSelector(
//         title: const Text("Photo Filter Example"),
//         image: Image.memory(Uint8List.fromList(imageLib.encodeJpg(image!))),
//         appBarColor: Colors.green,
//         filters: presetFiltersList,
//         filename: fileName,
//         loader: const Center(child: CircularProgressIndicator()),
//         fit: BoxFit.contain,
//       ),
//     ),
//   );
  
//   if (imageFileMap.containsKey('image_filtered')) {
//     imageLib.Image? filteredImage = imageFileMap['image_filtered'];
//     return Image.memory(Uint8List.fromList(imageLib.encodeJpg(filteredImage!)));
//   } else {
//     return null;
//   }
// }
