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

class DicePage extends StatelessWidget {
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
  final List<String> imageNameList = ['firefox', 'linux', 'mac', 'minion', 'rubberdack'];
  int rndomIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          setState(
            () {
              rndomIndex = Random().nextInt(5);
            },
          );
        },
        child: Image.asset('images/${imageNameList[rndomIndex]}.png'),
      ),
    );
  }
}
