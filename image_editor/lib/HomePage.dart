import 'package:flutter/material.dart';
import 'package:image_editor/ApplyFilters.dart';
import 'package:image_editor/EditImg.dart';
import 'package:image_editor/GetImg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_editor/SaveInGallery.dart';
import 'dart:io';
import 'package:image/image.dart' as imageLib;
import 'package:photofilters/photofilters.dart';

import 'package:path/path.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _selected = false; //to check if a image is selected or not
  File? _image; //here we will store the selected image and apply modifications
  double _ImageContainerHeight = 450, _ImageContainerWidth = 400;

  Future getImage(context, _image) async {
    print("EEEE");
    String fileName = basename(_image.path);
    var image = imageLib.decodeImage(await _image!.readAsBytes());
    image = imageLib.copyResize(image!, width: 600);
    Map imagefile = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PhotoFilterSelector(
          title: const Text("Photo Filter Example"),
          image: image!,
          filters: presetFiltersList,
          filename: fileName,
          loader: const Center(child: CircularProgressIndicator()),
          fit: BoxFit.contain,
        ),
      ),
    );

    if (imagefile.containsKey('image_filtered')) {
      setState(() {
        _image = imagefile['image_filtered'];
      });
      print(_image!.path);
    }
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[400],
        title: const Text('Flutter Image Editor'),
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          SizedBox(
              height: _ImageContainerHeight,
              width: _ImageContainerWidth,
              child: _selected // checks if a image is selected or not
                  ? Image.file(_image!)
                  : Image.asset('images/cam.png')),
          Row(
            children: <Widget>[
              const Spacer(
                flex: 2,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue, // text color
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 5,
                  ),
                  child: const Text(
                    'Get_Image', // to select a image from gallery
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    var Ifile = await GetiImg(
                        _image); // function called from GetImg.dart
                    if (Ifile != null) {
                      setState(() {
                        _image = Ifile;
                        _selected = true;
                      });
                    }
                  }),
              const Spacer(
                flex: 1,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue, // text color
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 5,
                  ),
                  child: const Text(
                    'Edit Image', //to start editing the shape, size, etc of the selected image
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    var Ifile0 = await editImage(
                        _image); // function called from EditImg.dart
                    if (Ifile0 != null) {
                      setState(() {
                        _image = Ifile0;
                      });
                    }
                  }),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Spacer(
                flex: 2,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue, // text color
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 5,
                  ),
                  child: const Text(
                    'Apply Filters', //to start apply various photo filters to the selected image
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                   var Ifile0  =  getImage(context, _image!);
                    // var Ifile0 = await applyFilters(context,
                    //     _image!); // function called from ApplyFilters.dart
                    if (Ifile0 != null) {
                      setState(() {
                        _image = Ifile0 as File?;
                      });
                    }
                  }),
              const Spacer(
                flex: 1,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue, // text color
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 5,
                  ),
                  child: const Text(
                    'Download Editted image', //to save the edited  image to gallery
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    await saveImage(
                        _image!); // function called from SaveInGallery.dart
                  }),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ],
      )),
    );
  }
}
