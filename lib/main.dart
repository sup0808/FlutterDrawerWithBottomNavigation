import 'package:flutter/material.dart';
import 'package:flutter_drawer_with_bottomnavigation/views/contact_screen.dart';
import 'package:flutter_drawer_with_bottomnavigation/views/help_screen.dart';
import 'package:flutter_drawer_with_bottomnavigation/views/home_screen.dart';
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
      home: HomePage(),
      /*initialRoute: "/",
      routes: {
        "/": (context)=>HomePage(),
        "/profile" : (context) => ProfileScreen(),
        "/settings" : (context) => SettingsScreen(),
        "/help" : (context) => HelpScreen(),
        "/contact" : (context) => ContactScreen()
      },*/
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndexValue = 0;
  List screensList = [
    HomeScreen(),
    ProfileScreen(),
    SettingsScreen(),
    HelpScreen()


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Drawer Demo "),
      ),
      drawer: Drawer(
        child: DrawerDemo(),
      ),
      body: screensList[currentIndexValue],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            currentIndexValue = index;
          });
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blueGrey,
        currentIndex: currentIndexValue,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Home", tooltip: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Profile", tooltip: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings", tooltip: "Settings"),
          BottomNavigationBarItem(
              icon: Icon(Icons.help), label: "Help", tooltip: "Help"),
        ],
      ),
    );
  }
}
