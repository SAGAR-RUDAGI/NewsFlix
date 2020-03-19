import 'package:flutter/material.dart';
import 'navigationDrawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("NewsFlix"),
          backgroundColor: Colors.indigo[700],
          centerTitle: true,
        ),
        drawer: NavigationDrawer(),
      ),
    );
  }
}
