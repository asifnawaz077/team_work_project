import 'package:flutter/material.dart';
import 'package:team_work_project/View/Home_View/BottomNavigationBar/Home_pages/home_view_1.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({super.key});

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeView1(),
    Center(child: Text('Solvbox.AI')),
    Center(child: Text('Chats')),
    Center(child: Text('LoDeMo')),
    Center(child: Text('Profile')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width / 375; // Base width
    final h = MediaQuery.of(context).size.height / 812; // Base height

    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        selectedItemColor: const Color(0xFF1C63D5),
        unselectedItemColor: Colors.black54,
        showUnselectedLabels: true,
        selectedFontSize: 12 * w,
        unselectedFontSize: 12 * w,
        iconSize: 24 * w,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              alignment: Alignment.topCenter,
              children: [
                Icon(Icons.auto_awesome),
                Positioned(
                  top: -2 * h,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 4 * w,
                      vertical: 1 * h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(4 * w),
                    ),
                    child: Text(
                      'beta',
                      style: TextStyle(
                        fontSize: 8 * w,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            label: 'Solvbox.AI',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_outline),
            label: 'LoDeMo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
