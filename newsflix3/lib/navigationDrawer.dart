import 'package:flutter/material.dart';
import 'package:newsflix3/views/categoryNews.dart';
import 'package:newsflix3/views/home.dart';


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
                    ))
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.indigo[700],
            )),
            ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
          trailing: Icon(Icons.trending_up, color: Colors.white),
          title: Text("Top Headlines",
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CategoryNews(
                category: "business"
              )),
            );
          },
          trailing: Icon(Icons.business, color: Colors.white),
          title: Text("Business",
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CategoryNews(
                category: "entertainment"
              )),
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
              MaterialPageRoute(builder: (context) => CategoryNews(
                category: "health"
              )),
            );
          },
          trailing: Icon(Icons.local_hospital, color: Colors.white),
          title: Text("Health",
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CategoryNews(
                category: "science"
              )),
            );
          },
          trailing: Icon(Icons.all_inclusive, color: Colors.white),
          title:
              Text("Science", style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CategoryNews(
                category: "sports"
              )),
            );
          },
          trailing: Icon(Icons.pool, color: Colors.white),
          title: Text("Sports",
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CategoryNews(
                category: "technology"
              )),
            );
          },
          trailing: Icon(Icons.devices, color: Colors.white),
          title: Text("Technology",
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
      ],
    ),
  );
}
