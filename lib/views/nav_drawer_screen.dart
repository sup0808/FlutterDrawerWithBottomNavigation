import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_drawer_with_bottomnavigation/main.dart';
import 'package:flutter_drawer_with_bottomnavigation/views/home_screen.dart';

class DrawerDemo extends StatefulWidget {
  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
       const DrawerHeader(
          child: Text(
            "Supriya Gupta",
            style: TextStyle(fontSize: 25),
          ),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.only(
             bottomLeft: Radius.circular(1.0),
             bottomRight: Radius.circular(1.0)
           ),
           color: Colors.white,
           image: DecorationImage(image: AssetImage('assets/user.jpg'))
         ),

        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Profile"),
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings"),
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
        ListTile(
          leading: Icon(Icons.contact_emergency),
          title: Text("Contact"),
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
        ListTile(
          title: Text("Help"),
          leading: Icon(Icons.help),
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
      ],
    );
  }
}
