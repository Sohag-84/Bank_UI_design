// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constant/color.dart';
import 'card_screen.dart';
import 'dashboard_screen.dart';
import 'setting_screen.dart';
import 'wallet_screen.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  final pages = [
    DashboardScreen(),
    WalletScreen(),
    CardScreen(),
    SettingScreen()
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: BottomNavColor.selectedItemColor,
        unselectedItemColor: BottomNavColor.unselectedItemColor,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: "Dashboard"),
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet_travel), label: "Wallet"),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card_outlined), label: "Cards"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: "Settings"),
        ],
      ),
      body: pages[_currentIndex],
    );
  }
}
