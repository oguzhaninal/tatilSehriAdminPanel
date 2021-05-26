import 'package:adminpanel/screens/dashboard/dashboardScreen.dart';
import 'package:adminpanel/sideMenu.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: s.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SideMenu(),
              DashboardScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
