import 'package:fintech_ui/screens/budget/no_budget_page.dart';
import 'package:fintech_ui/screens/home/home_page.dart';
import 'package:fintech_ui/screens/insight/insight.dart';
import 'package:fintech_ui/screens/profile/profile.dart';
import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    NoBudgetPage(),
    InsightPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_chart_outlined),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ""),
        ],
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey.shade400,
        selectedItemColor: blueColor,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
