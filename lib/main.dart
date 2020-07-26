import 'package:flutter/material.dart';
import 'package:flutter_music_app_credixco/ui/music_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Music Application',
      theme: ThemeData.dark(),
      home: Scaffold(
        body: MusicList(),
      ),
    );
  }
}
