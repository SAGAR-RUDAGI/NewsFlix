import 'package:flutter/material.dart';

class EntertainmentRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Entertainment News"),
            backgroundColor: Colors.indigo[700],
          //   bottom: TabBar(tabs: choices.map((Choice choice){
          //     return Tab(
          //       text: choice.title,
          //       icon: Icon(choice.icon)
          //     );
          //   }).toList(),
          // ),
        )),
      ),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Regional', icon: Icons.directions_car),
  const Choice(title: 'International', icon: Icons.directions_bike),
];