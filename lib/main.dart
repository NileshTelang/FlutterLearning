import 'package:flutter/material.dart';

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
  var _qindex = 0, _aindex = 0;
  void _corc() {
    setState(() {
      _qindex = _qindex + 1;
      _aindex = 3;
    });
    print(_qindex + _aindex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['What\'s your fave anime ? ', 'Do you wanna die ?'];
    var answers = [
      'Naruto ',
      ' One Piece ',
      ' Hentai',
      'yes ',
      ' definitely yes ',
      'Fuck'
    ];
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title"),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                Text(questions[_qindex]),
                ElevatedButton(
                  onPressed: _corc,
                  child: Text(answers[_aindex]),
                ),
                ElevatedButton(
                  onPressed: () => print('F U 2'),
                  child: Text(answers[_aindex + 1]),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('F U 3');
                  },
                  child: Text(answers[_aindex + 2]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
