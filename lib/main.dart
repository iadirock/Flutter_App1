//importing the material icon theme to add in our app
import 'package:flutter/material.dart';

//main function which runs automatically on starting the app

//Instantiatng my MyApp class
void main() => runApp(MyApp());
//shortcut for braces '{}' = '=>'. Only use when function have only 1 expression

//statelesswidget is provided by the material.dart
class MyApp extends StatelessWidget {
  // void answerFunc() {
  // print('answer chosen');
  // }

  //decorator provided by flutter and dart
  //Basically we are overriding the build function provided by the stateless widget
  @override
  Widget build(BuildContext context) {
    // scaffold gives you a basic design
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Text('The question!'),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: () => print('Answer 1'),
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print('Answer 2'),
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: () => print('Answer 3'),
              ),
            ],
          )),
    );
  }
}
