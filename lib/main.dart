import 'package:flutter/material.dart';
import 'package:flutter_first/quiz.dart';
import 'package:flutter_first/result.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

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
      'questionText': 'What could be True ? ',
      'answers': [
        {'text': '1 . Multiverse', 'score': 05},
        {'text': '2 . Parallel World', 'score': 05},
        {'text': '3 . LoopHole', 'score': 00},
        {'text': '4 . BermudaTimeMachineThoery', 'score': 10},
      ]
    },
    {
      'questionText': 'What\'s your fave anime ? ',
      'answers': [
        {'text': '1 . Naruto', 'score': 00},
        {'text': '2 . One Piece ', 'score': 00},
        {'text': '3 . Hentai', 'score': 10},
        {'text': '4 . RomCom', 'score': 10},
      ]
    },
    {
      'questionText': 'Who\'s Stronger In universe ? ',
      'answers': [
        {'text': '1 . Naruto', 'score': 00},
        {'text': '2 . Saitama ', 'score': 00},
        {'text': '3 . Goku', 'score': 10},
        {'text': '4 . Luffy', 'score': 00},
      ]
    },
    {
      'questionText': 'Ghosts Do Exist But For How Long ? ',
      'answers': [
        {'text': '1 . Until Their Last wish come true', 'score': 00},
        {'text': '2 . Until Their body Destroys ', 'score': 00},
        {'text': '3 . Until god appears', 'score': 00},
        {'text': '4 . Until You realise You Are Crazy To Believe In This Shit ', 'score': 10},
      ]
    },
    {
      'questionText': 'This Application Is built by  ?',
      'answers': [
        {'text': '1 . A Genius', 'score': 00},
        {'text': '2 . A Legend ', 'score': 00},
        {'text': '3 . A Creep ', 'score': 10},
        {'text': '4 . Yours Only FBoy ', 'score': 00}
      ],
    },
    {
      'questionText': 'Do you wanna die ?',
      'answers': [
        {'text': '1 . Yes', 'score': 00},
        {'text': '2 . DropDead Already ', 'score': 10}
      ],
    }
  ];
  var _qindex = 0;
  var _score = 0;

  void _resetQuiz() {
    setState(() {
      _qindex = 0;
      _score = 0;
    });
  }

  void _corc(int score) {
    _score = _score + score;
    setState(() {
      _qindex = _qindex + 1;
    });
    if (_qindex < _questions.length) {
      print('next Q -> ');
    } else {
      print('You Done !');
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("QuizGame using Flutter"),
        ),
        body: Center(
          child: Container(
            child: _qindex < _questions.length ? quiz(_corc, _qindex, _questions) : result(_score, _resetQuiz),
          ),
        ),
      ),
    );
  }
}
