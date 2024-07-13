import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_drawer_with_bottomnavigation/main.dart';
import 'package:flutter_drawer_with_bottomnavigation/views/contact_screen.dart';
import 'package:flutter_drawer_with_bottomnavigation/views/help_screen.dart';
import 'package:flutter_drawer_with_bottomnavigation/views/dashboard_screen.dart';
import 'package:flutter_drawer_with_bottomnavigation/views/profile_screen.dart';
import 'package:flutter_drawer_with_bottomnavigation/views/settings_screen.dart';

class Fabtabs extends StatefulWidget {
  int selectedIndex =0;
  Fabtabs({required this.selectedIndex});

  @override
  State<Fabtabs> createState() => _FabtabsState();
}

class _FabtabsState extends State<Fabtabs> {
  int currentIndex = 0;

  onItemTapped(int index){

    setState(() {
      widget.selectedIndex = index;
      currentIndex = widget.selectedIndex;
    });

  }
  @override
  void initState() {
   onItemTapped(widget.selectedIndex);
    super.initState();
  }

  List screensList = [
    HomePage(),
    ProfileScreen(),
    SettingsScreen(),
    ContactScreen(),
    HelpScreen(),

  ];

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = currentIndex  == 0? HomePage() : currentIndex == 1 ?
    ProfileScreen() : currentIndex ==2 ? SettingsScreen() :  currentIndex ==3 ? ContactScreen() :HelpScreen();

    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          print("print");
        },
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                  minWidth: 35,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home_filled,
                        color: currentIndex == 0 ? Colors.pink : Colors.grey,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          color: currentIndex == 0 ? Colors.pink : Colors.grey,
                        ),
                      )
                    ],),
                  onPressed: (){
                    setState(() {
                      currentScreen = HomePage();
                      currentIndex = 0;
                    });
                  }),
              MaterialButton(
                  minWidth: 35,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        color: currentIndex == 1 ? Colors.pink : Colors.grey,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                          color: currentIndex == 1 ? Colors.pink : Colors.grey,
                        ),
                      )
                    ],),
                  onPressed: (){
                    setState(() {
                      currentScreen = ProfileScreen();
                      currentIndex = 1;
                    });
                  }),
              MaterialButton(
                  minWidth: 35,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.settings,
                        color: currentIndex == 2 ? Colors.pink : Colors.grey,
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(
                          color: currentIndex == 2 ? Colors.pink : Colors.grey,
                        ),
                      )
                    ],),
                  onPressed: (){
                    setState(() {
                      currentScreen = SettingsScreen();
                      currentIndex = 2;
                    });
                  }),
              MaterialButton(
                  minWidth: 35,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.emergency,
                        color: currentIndex == 3 ? Colors.pink : Colors.grey,
                      ),
                      Text(
                        "Contact",
                        style: TextStyle(
                          color: currentIndex == 3 ? Colors.pink : Colors.grey,
                        ),
                      )
                    ],),
                  onPressed: (){ setState(() {
                    currentScreen = ContactScreen();
                    currentIndex = 3;
                  });}),
            /*  MaterialButton(
                  minWidth: 35,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.help,
                        color: currentIndex == 4 ? Colors.pink : Colors.grey,
                      ),
                      Text(
                        "Contact",
                        style: TextStyle(
                          color: currentIndex == 4 ? Colors.pink : Colors.grey,
                        ),
                      )
                    ],),
                  onPressed: (){ setState(() {
                    currentScreen = HelpScreen();
                    currentIndex = 4;
                  });}),
*/
            ],
          ),
        ),
      ),
    );
  }
}
