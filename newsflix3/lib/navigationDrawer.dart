import 'package:flutter/material.dart';

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
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage("https://f0.pngfuel.com/png/136/22/profile-icon-illustration-user-profile-computer-icons-girl-customer-avatar-png-clip-art.png"),
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "User Name",
                      style: TextStyle(color: Colors.black87, fontSize: 20.0),
                    ))
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.indigo[700],
            )),
        ListTile(
          onTap: () {},
          trailing: Icon(Icons.trending_up, color: Colors.white),
          title: Text("Trending",
              style: TextStyle(color: Colors.white30, fontSize: 20)),
        ),
        ListTile(
          trailing: Icon(Icons.live_tv, color: Colors.white),
          title: Text("Entertainment",
              style: TextStyle(color: Colors.white30, fontSize: 20)),
        ),
        ListTile(
          trailing: Icon(Icons.group, color: Colors.white),
          title: Text("Political",
              style: TextStyle(color: Colors.white30, fontSize: 20)),
        ),
        ListTile(
          trailing: Icon(Icons.insert_chart, color: Colors.white),
          title: Text("Tech",
              style: TextStyle(color: Colors.white30, fontSize: 20)),
        ),
        ListTile(
          trailing: Icon(Icons.laptop, color: Colors.white),
          title: Text("Gaming",
              style: TextStyle(color: Colors.white30, fontSize: 20)),
        ),
      ],
    ),
  );
}
