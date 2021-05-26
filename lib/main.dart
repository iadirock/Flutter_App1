//importing the material icon theme to add in our app
import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

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
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Dog', 'Rabbit', 'Greenpig', 'WhiteHorse'],
    },
    {
      'questionText': 'What\'s your favourite instructor?',
      'answers': ['Dgo', 'Rab', 'Gred', 'WhiteJ'],
    },
  ];
  //questionIndex can be viewed and accessed in this class only
  var _questionIndex = 0;

  //answerFunc can be viewed and accessed in this class only
  void _answerFunc() {
    //chnaging the state by wrapping the code
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('more questions ahead');
    } else {
      print('no more questions');
    }
  }

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
        //  _questionIndex < _questions.length ? conditions for checking
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _answerFunc, _questionIndex)
            : Result(),
      ),
    );
  }
}
