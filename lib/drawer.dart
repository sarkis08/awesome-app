import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Drawer(
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
      );
  }
  
}