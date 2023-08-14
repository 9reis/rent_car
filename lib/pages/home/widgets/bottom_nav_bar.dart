import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.08,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kSecBackgroundColor,
        selectedItemColor: kYellowColor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (value) => setState(() {
          activeIndex = value;
        }),
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.house_alt_fill), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled), label: ''),
        ],
      ),
    );
  }
}
