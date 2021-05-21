//importing the material icon theme to add in our app
import 'package:flutter/material.dart';

//main function which runs automatically on starting the app
void main() {
  //Instantiatng my MyApp class
  runApp(MyApp());
}

//statelesswidget is provided by the material.dart
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(home: Text('Helloo!'));
  }
}
