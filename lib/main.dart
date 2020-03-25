import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:masterapp01/home.dart';

void main(){
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Title'),
          actions: <Widget>[
            Icon(Icons.search),
            SizedBox(
              width: 20.0,
            ),
            Icon(Icons.shopping_cart),
          ],
        ),
        drawer: Drawer(),
          body: Home(),
        floatingActionButton: FloatingActionButton(
          onPressed: (){

          },
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.purple,),
              title: Text('Home', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.green),)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.deepOrange,),
                title: Text('Account',style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.green),)
            ),
          ],
        ),
      ),
    ),
  );
}