import 'package:flutter/material.dart';
import 'package:myapp/src/screens/home_page/home_body.dart';
import 'package:myapp/src/screens/profile_page/profile_page.dart';
import 'package:myapp/src/screens/search/search_page.dart';
import 'package:myapp/src/screens/selected_item/selected_item.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  List<Widget> iconlist = [
    const HomeBody(),
    const SearchPage(),
    const SelectedItem(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          titleSpacing: 50,
          centerTitle: true,
          backgroundColor: Colors.white,
          shadowColor: const Color.fromARGB(255, 114, 113, 112),
          elevation: 5,
          title: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'ONE CLICK',
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 17,)
            ],
          ),
        ),
      ),
      body: Center(
        child: iconlist[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        unselectedItemColor: Color.fromARGB(255, 139, 139, 137),
        unselectedIconTheme: IconThemeData(size: 22),
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(size: 25),
        elevation: 0,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(label: "", icon: Icon(Icons.home,)),
          BottomNavigationBarItem(label: "", icon: Icon(Icons.search,)),
          BottomNavigationBarItem(label: "", icon: Icon(Icons.history,)),
          BottomNavigationBarItem(label: "", icon: Icon(Icons.person,)),
        ],
      ),
    );
  }
}
