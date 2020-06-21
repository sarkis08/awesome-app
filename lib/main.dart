import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  // WidgetsApp, MaterialApp, CuoertinoApp
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(primaryColor: Colors.purple),
    );
  }
}




