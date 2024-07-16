// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:educational_app_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../screens/subject.dart';

class NavBarWidget extends StatefulWidget {
  final String navBarHome;
  final String navBarSubject;
  NavBarWidget({
    Key? key,
    required this.navBarHome,
    required this.navBarSubject,
  }) : super(key: key);

  @override
  _NavBarWidgetState createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (index == 0) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ));
      } else {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SubjectScreen(),
            ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BottomNavigationBar(
        
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(widget.navBarHome),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
                widget.navBarSubject), // Örnek için aynı ikonu kullandım
            label: 'Subjects',
          ),
        ],
      ),
    );
  }
}
