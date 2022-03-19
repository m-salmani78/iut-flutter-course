import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:new_flutter_project/pages/home_page/home_page.dart';

import '../profile_page/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    const HomePage(),
    Container(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Main Page"),
      // ),
      body: _widgetOptions[_selectedIndex],
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: const CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVLqfekg_kitC_QJ5kgBUTh2tt5EIcxEnQDQ&usqp=CAU'),
                ),
                otherAccountsPictures: [
                  Material(
                    color: Colors.transparent,
                    child: IconButton(
                      icon: const Icon(Icons.light_mode, color: Colors.white),
                      onPressed: () {},
                    ),
                  )
                ],
                accountName: Text('Akbar Akbari'),
                accountEmail: Text('akbari@gmail.com')),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        // showSelectedLabels: false,
        // showUnselectedLabels: true,
        elevation: 16,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            log('index = $index');
          });
        },
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: "Home",
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
            icon: const Icon(Icons.search_rounded),
            label: "Search",
            backgroundColor: Colors.red.shade700,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: "Profile",
            backgroundColor: Colors.red.shade900,
          ),
        ],
      ),
    );
  }
}
