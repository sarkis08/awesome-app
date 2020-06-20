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

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var myText = "Change My Name";
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://webwiser.netlify.app/img/webwiser-sm.jpg"),
                )),
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Card(
              color: Colors.purple[50],
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/james-harriso.jpg",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    myText,
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                       controller: _nameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Name",
                          labelText: "Name"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
        backgroundColor: Colors.purple,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
