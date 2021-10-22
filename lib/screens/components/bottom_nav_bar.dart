import 'package:flutter/material.dart';
import 'package:it_supporter/constant.dart';
import 'package:it_supporter/constant.dart';
import 'package:it_supporter/screens/home_screen.dart';
import 'package:it_supporter/screens/request_screen/list_history_screen.dart';
// import 'package:it_support/screens/chat_screen/list_chat_screen.dart';
import 'package:it_supporter/screens/profile_screen/profile_screen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  final screens = [
    HomeScreen(),
    ListItScreen(),
    // ListChatScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: SizedBox(
          height: 45,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: kBackgroundColor,
            selectedItemColor: kBlueColor,
            showUnselectedLabels: false,
            iconSize: 25,
            selectedFontSize: 8,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Trang chủ",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.format_list_bulleted),
                label: "Lịch sử",
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.message),
              //   label: "Trò truyện",
              // ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Hồ Sơ",
              ),
            ],
          ),
        ),
      );
}
