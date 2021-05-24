//importing the material icon theme to add in our app
import 'package:flutter/material.dart';

import './question.dart';
//main function which runs automatically on starting the app

//Instantiatng my MyApp class
void main() => runApp(MyApp());
//shortcut for braces '{}' = '=>'. Only use when function have only 1 expression

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //questionIndex can be viewed and accessed in this class only
  var _questionIndex = 0;

  //answerFunc can be viewed and accessed in this class only
  void _answerFunc() {
    //chnaging the state by wrapping the code
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  //decorator provided by flutter and dart
  //Basically we are overriding the build function provided by the stateless widget
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];
    // scaffold gives you a basic design
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Question(questions[_questionIndex]),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: _answerFunc,
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
