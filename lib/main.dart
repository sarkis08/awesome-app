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
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            // DrawerHeader(
            //   child: Text('Drawer Header'),
            //   decoration: BoxDecoration(color: Colors.purple,),
            //   ),
            UserAccountsDrawerHeader(
              accountName: Text('Henry Kormoh'), 
              accountEmail: Text('exmaple@gmail.com'),
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://webwiser.netlify.app/img/webwiser-sm.jpg"),)
              ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Henry Kormoh'),
              subtitle: Text('Engineer'),
              trailing: Icon(Icons.edit),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('example@gmail.com'),
              trailing: Icon(Icons.edit),
              onTap: () {},
            )
          ],
        ),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.grey,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
        backgroundColor: Colors.purple,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
