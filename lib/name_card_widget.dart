
import 'package:flutter/material.dart';

class NameCardWidget extends StatelessWidget {
  const NameCardWidget({
    Key key,
    @required this.myText,
    @required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}