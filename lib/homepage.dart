import 'package:flutter/material.dart';
import 'package:instaclonetut/pages/account.dart';
import 'package:instaclonetut/pages/home.dart';
import 'package:instaclonetut/pages/reels.dart';
import 'package:instaclonetut/pages/search.dart';
import 'package:instaclonetut/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //navigation around the bottom nav bar
  int _selectedIndex = 2;
  void _navigatBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //different pages to navigate to
  final List<Widget> _children = [
     UserHome(),
    const UserSearch(),
    const UserReels(),
    const UserShop(),
    const UserAccount(),
    // const Center(child: Text('HOME ')),
    // const Center(child: Text('SEARCH ')),
    // const Center(child: Text('REELS ')),
    // const Center(child: Text('SHOP ')),
    // const Center(child: Text('ACCOUNT ')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigatBottomNavBar,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'reels'),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
          ]),
    );
  }
}
