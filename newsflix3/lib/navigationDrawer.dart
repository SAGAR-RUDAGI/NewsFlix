import 'package:flutter/material.dart';
import 'package:newsflix3/Routes/trendingRoute.dart';
import 'Routes/entertainmentRoute.dart';
import 'Routes/politicalRoute.dart';
import 'Routes/gamingRoute.dart';
import 'Routes/techRoute.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: menuList(context),
    );
  }
}

Widget menuList(context) {
  return Container(
    color: Colors.black87,
    child: ListView(
      children: <Widget>[
        DrawerHeader(
            child: Stack(
              children: <Widget>[
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      "NewsFlix",
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    )
                  )
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.indigo[700],
            )
            ),
        ListTile(
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => TrendingRoute()),
            );
          },
          trailing: Icon(Icons.trending_up, color: Colors.white),
          title: Text("Trending",
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => EntertainmentRoute()),
            );
          },
          trailing: Icon(Icons.live_tv, color: Colors.white),
          title: Text("Entertainment",
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => PoliticalRoute()),
            );
          },
          trailing: Icon(Icons.group, color: Colors.white),
          title: Text("Political",
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => TechRoute()),
            );
          },
          trailing: Icon(Icons.insert_chart, color: Colors.white),
          title: Text("Tech",
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => GamingRoute()),
            );
          },
          trailing: Icon(Icons.laptop, color: Colors.white),
          title: Text("Gaming",
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
      ],
    ),
  );
}
