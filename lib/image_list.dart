import 'package:flutter/material.dart';
import 'image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, int index) {
          //return Text(images[index].url);
          return Text("Henkfns");
        });
  }
}
