import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void corc() {
    print('F U ');
  }

  @override
  Widget build(BuildContext context) {
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
                Text('Which Is Your Fav Anime ?'),
                ElevatedButton(
                  onPressed: corc,
                  child: Text('Naruto'),
                ),
                ElevatedButton(
                  onPressed: () => print('F U 2'),
                  child: Text('One Piece'),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('F U 3');
                  },
                  child: Text('Hentai'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
