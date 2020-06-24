import 'pages/login_page.dart';
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
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(primaryColor: Colors.purple),
      routes: {
        LoginPage.routeName : (context) => LoginPage(),
        HomePage.routeName : (context) => HomePage(),
      },
    );
  }
}
