import 'package:app/src/modules/home/ui/home.dart';
import 'package:flutter/material.dart';

import 'bottom_nav_bar_widget.dart';
import 'clinic_status.dart';

class MainPage extends StatefulWidget {
  MainPage({
    Key key,
  }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<MainPage> {
  int currentIndex = 0;

  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  List<Widget> _children(context) => [
        HomePage(),
        StatusPage(),
      ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {},
      child: Scaffold(
        body: Column(
          children: [
            Expanded(child: _children(context)[currentIndex]),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.upload_file),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: FABBottomAppBar(
          color: Colors.grey,
          selectedColor: Theme.of(context).primaryColor,
          currentIndex: currentIndex,
          notchedShape: CircularNotchedRectangle(),
          onTabSelected: onTabTapped,
          items: [
            FABBottomAppBarItem(
              iconData: Icons.menu,
            ),
            FABBottomAppBarItem(
              iconData: Icons.line_style,
            ),
          ],
        ),
      ),
    );
  }
}
