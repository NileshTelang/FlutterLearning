import 'package:flutter/material.dart';
import './answers.dart';
import './questions.dart';

class result extends StatelessWidget {
  final int resultScore;
  final resetQuiz;

  result(this.resultScore, this.resetQuiz);

  String get resultphrase {
    var res = 'You Suck bruh ! ';
    if (resultScore < 40) {
      res = 'You Good Bruh !';
    } else if (resultScore < 30) {
      res = 'well you could do better !';
    } else if (resultScore > 40) {
      res = 'Smashed It Homie ! niecely done ';
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultphrase,
            style: TextStyle(
              fontSize: 31,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Center(
            child: TextButton(
                onPressed: resetQuiz,
                child: Center(
                  child: Container(
                    child: Text(
                      'Restart Quiz !',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
