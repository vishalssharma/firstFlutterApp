import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        // return Text(images[index].url);
        // return Image.network(images[index].url);
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageModel image) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          // Image.network(image.url),
          // Padding(padding: EdgeInsets.all(5.0)),
          Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Image.network(image.url),
          ),

          Text(image.title),
        ],
      ),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
    );
  }
}
