// import flutter helper lib
import 'package:flutter/material.dart';

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

  // must define a 'build' method that returns
  // the widgets that *this* widget will show
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // req a func
            setState(() {
              counter += 1;
            });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
