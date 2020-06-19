import 'package:flutter/material.dart';

void main() {
  // WidgetsApp 
  // MaterialApp
  // CuoertinoApp
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primaryColor: Colors.purple
    ),
  ),);
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Container(
        child: Text('Hi Flutter Body'),
      ),
    );
  }
}


