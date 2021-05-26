import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset("assets/images/logo.png")),
            DrawerListTile(Icon(Icons.home), "Ana Sayfa", () {}),
            DrawerListTile(Icon(Icons.home), "Ana Sayfa", () {}),
            DrawerListTile(Icon(Icons.home), "Ana Sayfa", () {}),
            DrawerListTile(Icon(Icons.home), "Ana Sayfa", () {}),
            DrawerListTile(Icon(Icons.home), "Ana Sayfa", () {}),
            DrawerListTile(Icon(Icons.home), "Ana Sayfa", () {}),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  Icon leadIcon;
  String title;
  VoidCallback press;
  DrawerListTile(this.leadIcon, this.title, this.press);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0,
      leading: Theme(
          data: ThemeData(
            iconTheme: IconThemeData(color: Colors.white54),
          ),
          child: leadIcon),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
