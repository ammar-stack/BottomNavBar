import 'package:flutter/material.dart';
import 'package:starting_firebase/pages/contact.dart';
import 'package:starting_firebase/pages/home.dart';
import 'package:starting_firebase/pages/search.dart';
import 'package:starting_firebase/pages/setting.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    
    List<Widget> widgets = [
      Home(),
      Settings(),
      Contact(),
      Search()
    ];
    void onTapped(int index){
      setState(() {
        selectedIndex = index;
      });
    }
    return Scaffold(
      appBar: AppBar(
        title:const Text("Bottom Nav Tutorial",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: widgets.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items:const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: 'Contacts'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search'
          )
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
    );
  }
}