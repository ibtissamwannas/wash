import 'package:flutter/material.dart';
import 'package:wash/home.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  final List _screens = [
    Home(),
    Home(),
    Home(),
    Home(),
  ];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: Container(
          height: 80,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              onTap: _updateIndex,
              selectedItemColor: Colors.blue[700],
              selectedFontSize: 12,
              unselectedFontSize: 12,
              iconSize: 30,
              items: const [
                BottomNavigationBarItem(
                  label: "الرئيسية",
                  icon: Icon(
                    Icons.home,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "الطلبات",
                  icon: Icon(
                    Icons.shopping_cart,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "الرسائل",
                  icon: Icon(Icons.email),
                ),
                BottomNavigationBarItem(
                  label: "حسابي",
                  icon: Icon(
                    Icons.perm_identity,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
