import 'package:flutter/material.dart';

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
          ExpandedImage('images/minion.png'),
          ExpandedImage('images/mac.png'),
        ],
      ),
    );
  }
}

class ExpandedImage extends StatelessWidget {
  final String path;
  ExpandedImage(this.path);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        child: Image.asset(path),
        onPressed: () => print('Hello'),
      ),
    );
  }
}
