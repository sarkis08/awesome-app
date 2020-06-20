import 'package:flutter/material.dart';

void main() {
  // WidgetsApp
  // MaterialApp
  // CuoertinoApp
  runApp(
    MaterialApp(
      home: HomePage(),
      theme: ThemeData(primaryColor: Colors.purple),
    ),
  );
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
        height: 100,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              width: 100,
              height: 100,
              alignment: Alignment.center,
              color: Colors.red,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 100,
              height: 100,
              alignment: Alignment.center,
              color: Colors.yellow,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 100,
              height: 100,
              alignment: Alignment.center,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
