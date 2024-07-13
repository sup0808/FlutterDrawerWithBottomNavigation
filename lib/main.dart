import 'package:flutter/material.dart';
import 'package:flutter_drawer_with_bottomnavigation/views/bottom_nav_screen.dart';
import 'package:flutter_drawer_with_bottomnavigation/views/contact_screen.dart';
import 'package:flutter_drawer_with_bottomnavigation/views/dashboard_screen.dart';
import 'package:flutter_drawer_with_bottomnavigation/views/nav_drawer_screen.dart';
import 'package:flutter_drawer_with_bottomnavigation/views/profile_screen.dart';
import 'package:flutter_drawer_with_bottomnavigation/views/settings_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Drawer",
      home: Fabtabs(selectedIndex: 0,),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("Home"),
      ),
      drawer: DrawerDemo(),
      body: DashboardScreen(),
    );
  }
}
