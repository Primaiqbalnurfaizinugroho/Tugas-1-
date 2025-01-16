import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"), //title aof appbar
        backgroundColor: Colors.blue, //background color of appbar
      ),
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Text('Text Widget'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.send),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home Page"),
                subtitle: Text("Subtitle menu 1"),
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text("Search Page"),
                subtitle: Text("Subtitle menu 1"),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Button 1",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Button 2",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: "Button 3",
          ),
        ],
      ),
    );
  }
}