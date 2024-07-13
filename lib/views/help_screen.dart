import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_drawer_with_bottomnavigation/views/nav_drawer_screen.dart';

class HelpScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
   return Scaffold(
     drawer: DrawerDemo(),
     appBar: AppBar(
       title: Text("Help"),
       backgroundColor: Colors.blue,
       centerTitle: true,
     ),
     body: Container(
         alignment : Alignment.center,
         child: Text("Help Screen")),
   );
  }

}