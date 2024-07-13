import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_drawer_with_bottomnavigation/views/nav_drawer_screen.dart';

class ProfileScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Profile"),
       backgroundColor: Colors.blue,
       centerTitle: true,
     ),
     drawer: DrawerDemo(),
     body: Container(
         alignment : Alignment.center,
         child: Text("Profile Screen")),
   );
  }

}