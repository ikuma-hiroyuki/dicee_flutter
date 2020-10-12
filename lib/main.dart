import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          ExpandedImage(),
          ExpandedImage(),
        ],
      ),
    );
  }
}

class ExpandedImage extends StatefulWidget {
  ExpandedImage();

  @override
  _ExpandedImageState createState() => _ExpandedImageState();
}

class _ExpandedImageState extends State<ExpandedImage> {
  final List<String> list = ['firefox', 'linux', 'mac', 'minion', 'rubberdack'];

  @override
  Widget build(BuildContext context) {
    String imgName = list[Random().nextInt(4)];
    return Expanded(
      child: TextButton(
        child: Image.asset('images/$imgName.png'),
        onPressed: () {
          setState(
            () {
              imgName = list[Random().nextInt(4)];
            },
          );
        },
      ),
    );
  }
}
