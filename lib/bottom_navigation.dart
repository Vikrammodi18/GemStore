import 'package:flutter/material.dart';
import 'package:gem_store/feature/home/view/home_screen.dart';
import 'package:gem_store/feature/search/view/discover_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentIndex = 0;
  List<Widget> navigationScreen = [
    HomeScreen(),
    DiscoverScreen(),
    Center(child: Text("coming soon")),
    Center(child: Text("coming soon")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashFactory: NoSplash.splashFactory, // 🔥 disables ripple/splash
          highlightColor: Colors.transparent, // 🔥 disables highlight
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 2,
          selectedFontSize: 0,
          iconSize: 28,
          unselectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff000000),
          unselectedItemColor: Color(0xffBEBFC4),
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: "",
            ),
          ],
        ),
      ),
      body: navigationScreen[currentIndex],
    );
  }
}
