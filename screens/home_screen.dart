import 'package:flutter/material.dart';
import 'university_info.dart';
import 'academic_programs.dart';
import 'campus_guide.dart';
import 'events.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    UniversityInfoScreen(),
    AcademicProgramsScreen(),
    CampusGuideScreen(),
    EventsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biruni Connect'),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: _screens[_selectedIndex],
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Biruni Üniversitesi"),
              accountEmail: Text("info@biruni.edu.tr"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.school, size: 50, color: Colors.blue),
              ),
            ),
            ListTile(
              title: Text('Üniversite Bilgileri'),
              leading: Icon(Icons.info),
              onTap: () => _onItemTapped(0),
            ),
            ListTile(
              title: Text('Akademik Programlar'),
              leading: Icon(Icons.book),
              onTap: () => _onItemTapped(1),
            ),
            ListTile(
              title: Text('Kampüs Rehberi'),
              leading: Icon(Icons.map),
              onTap: () => _onItemTapped(2),
            ),
            ListTile(
              title: Text('Etkinlikler'),
              leading: Icon(Icons.event),
              onTap: () => _onItemTapped(3),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Bilgiler',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Programlar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Rehber',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Etkinlikler',
          ),
        ],
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black87,
      ),
    );
  }
}
