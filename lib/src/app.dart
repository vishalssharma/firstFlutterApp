// import flutter helper lib
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'models/image_model.dart';
import 'dart:convert';
import 'widgets/image_list.dart';
// create a class that will be custom widget
// this class must extent the 'StatefullWidget' base class

// widget class
class App extends StatefulWidget {
  // returns an instance of Widget State
  createState() {
    return AppState();
  }
}

// widget's state class
class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter += 1;
    final response =
        await get('http://jsonplaceholder.typicode.com/photos/$counter');
    final imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      images.add(imageModel);
    });
  }

  // must define a 'build' method that returns
  // the widgets that *this* widget will show
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
