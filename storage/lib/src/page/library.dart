import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

/// Retrieving files from Firebase Storage is done in this widget
class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  final Reference storageRef = FirebaseStorage.instance.ref();
  List<Uint8List>? _images;

  @override
  void initState() {
    super.initState();
    _downloadImageFiles();
  }

  void _downloadImageFiles() async {
    final imagesRef = storageRef.child("images");

    try {
      final allImages = await imagesRef.listAll();
      final images = <Uint8List>[];
      for (var image in allImages.items) {
        final Uint8List? data = await image.getData();
        images.add(data!);
      }

      setState(() {
        _images = images;
      });
    } on FirebaseException catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    var imageUrls = [];
    return Scaffold(
        appBar: AppBar(
          title: const Text("Library"),
        ),
        body: _images == null
            ? const Center(child: CircularProgressIndicator())
            : Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  itemCount: _images!.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, 
                    mainAxisSpacing:4, 
                    crossAxisSpacing: 4// Change the number of columns as needed
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.memory(
                        _images![index],
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
            )
        // Wrap(
        //     spacing: 8.0,
        //     runSpacing: 8.0,
        //     children: [
        //       for (var image in _images!)
        //         Image.memory(
        //           image,
        //           width: 150,
        //           height: 150,
        //         )
        //     ],
        //   ),
        );
  }
}
