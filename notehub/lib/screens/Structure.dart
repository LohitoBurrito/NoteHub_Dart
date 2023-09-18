import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:notehub/screens/Homepage.dart';

class Structure extends StatefulWidget {
  const Structure({super.key});

  @override
  State<Structure> createState() => _StructureState();
}

class _StructureState extends State<Structure> {
  
  int _selectedIndex = 0;

  static final List<Widget>_widgetOptions = <Widget>[
    const HomeScreen(),
    const Text("View_Note"),
    const Text("Create_Note"),
    const Text("Your_Note"),
    const Text("Profile")
  ];
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex=index;
    });
    print('Tapped index is $_selectedIndex');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "View_Note"
          ),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_add_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_add_filled),
              label: "Create_Note"
          ),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Profile"
          )
        ],
      ),
      
    );
  }
}
