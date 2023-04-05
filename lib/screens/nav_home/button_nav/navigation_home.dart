import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import '../nav_home_children/homestel.dart';
import '../nav_home_children/Hostel_facilities/hostel_home/hostels.dart';

class NavigationHome extends StatefulWidget {
  const NavigationHome({Key? key}) : super(key: key);

  @override
  State<NavigationHome> createState() => _NavigationHomeState();
}

class _NavigationHomeState extends State<NavigationHome> {
  int currentIndex = 0;
  List<Widget> screens = [
    const Hostels(),
    const Homstel(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 5),
          ],
        ),
        child: BottomNavigationBar(
          selectedItemColor: const Color(AppColor.mainColor),
          iconSize: 25,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Hostel',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.maps_home_work_outlined),
              label: 'Homestel',
            ),
          ],
        ),
      ),
    );
  }
}
