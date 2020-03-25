import 'package:flutter/material.dart';

class About extends StatelessWidget {
  final String title;
  About(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Title'),
      ),
      body: Center(
        child: Text(this.title),
      ),
    );


  }
}
