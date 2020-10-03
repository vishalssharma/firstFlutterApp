// import flutter helper lib
import 'package:flutter/material.dart';

// create a class that will be custom widget
// this class must extent the 'StatelssWidget' base class
class App extends StatelessWidget {
  // must define a 'build' method that returns
  // the widgets that *this* widget will show
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Hi there!');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
