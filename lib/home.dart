import 'package:flutter/material.dart';
import 'package:masterapp01/about.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var messageText = TextEditingController();
  var showMessage = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            controller: messageText,
          ),
          RaisedButton(
            onPressed: (){
              setState(() {
                showMessage = messageText.text;
              });
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return About(showMessage);
              }
              ),);
            },
            child: Text('Go to ABout Screen'),
          ),
        ],
      ),
    );
  }
}

