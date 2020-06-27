import 'package:shared_preferences/shared_preferences.dart';

import 'pages/login_page.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'utils/constants.dart';

Future main() async {
  // WidgetsApp, MaterialApp, CuoertinoApp
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Constants.prefs.getBool("loggedIn") == true
          ? HomePage()
          : LoginPage(),
      theme: ThemeData(primaryColor: Colors.purple),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        HomePage.routeName: (context) => HomePage(),
      },
    );
  }
}
